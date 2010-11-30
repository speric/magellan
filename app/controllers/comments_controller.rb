class CommentsController < ApplicationController
  before_filter :authorize_user
  
  def index
    @comments = Comment.find(:all, :order => "created_at desc", :include => [:venue, :user])
  end
  
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
