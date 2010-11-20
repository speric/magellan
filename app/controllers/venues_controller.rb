class VenuesController < ApplicationController
  before_filter :authorize_user
  
  def index
    @venues = Venue.find(:all)
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
    @venue = Venue.find(params[:id])
  end
end
