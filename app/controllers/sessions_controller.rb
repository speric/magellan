class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by_email_address(params[:user][:email_address])
    unless @user.nil?
      session[:magellan_email_address] = @user.email_address
      redirect_to venues_path
    else
      flash[:error] = "Invalid login"
      redirect_to new_session_path
    end
  end
  
  def destroy
    session[:magellan_email_address] = nil
    session = nil
    redirect_to new_session_path
  end
end
