class VenuesController < ApplicationController
  before_filter :authorize_user
  
  def index
    @venues = Venue.find(:all, :include => [:comments, :user])
    @users  = User.find(:all)
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
  
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    flash[:notice] = "Venue deleted"
    redirect_to venues_path
  end
end
