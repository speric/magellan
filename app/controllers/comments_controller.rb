class CommentsController < ApplicationController
  before_filter :authorize_user
  
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      flash[:notice] = "Comment created"
      redirect_to venue_path(params[:venue_id])
    else
      render :text => "Invalid comment"
    end
  end
end
