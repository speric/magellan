class VenuesController < ApplicationController
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
end
