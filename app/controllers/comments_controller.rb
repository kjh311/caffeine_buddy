class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to comments_path
  end

  def  new
    @comment = Comment.new
  end

 def create
  @comment = Comment.new(comment_params)
  if @comment.save
   redirect_to comment_path
  else
   render 'new'
  end
 end

   def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to comments_path
  end
end
