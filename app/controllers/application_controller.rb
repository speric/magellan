# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  private
  
  def authorize_user
    @user = User.find_by_email_address(session[:magellan_email_address])
    
    if @user.nil?
      redirect_to :controller => "sessions", :action => "new"
    end
  end
end
