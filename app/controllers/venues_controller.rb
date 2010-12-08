class VenuesController < ApplicationController
  before_filter :authorize_user
  
  def index
    @venues = Venue.find(:all, :include => [:comments, :user])
    @users  = User.find(:all)
    @comments = Comment.find(:all, :include => [:venue, :user], :order => "created_at desc", :limit => 15)
  end
  
  def new
    @venue = Venue.new
  end
  
  def create
    @venue = Venue.new(params[:venue])
    if @venue.save
      flash[:notice] = "New Venue Created"
      redirect_to venues_path
    else
      render :action => :new
    end
  end
  
  def show
    @venue    = Venue.find(params[:id])
    @users    = User.find(:all)
    @comment  = Comment.new
  end
  
  def edit
    @venue = Venue.find(params[:id])
  end
  
  def update
    @venue = Venue.find(params[:id])
    if @venue.update_attributes(params[:venue])
      flash[:notice] = "Venue updated"
      redirect_to venue_path(@venue.id)
    else
      render :action => :edit
    end
  end
  
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    flash[:notice] = "Venue deleted"
    redirect_to venues_path
  end
end
