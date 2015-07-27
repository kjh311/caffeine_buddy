class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def edit

  end

  def show

  end

  def  new
    @comment = Comment.new
  end

 def create
  @comment = Comment.new(comment_params)
  if @comment.save
   redirect_to drink_prices_path
  else
   render 'new'
  end
 end

  def destroy

  end
end
