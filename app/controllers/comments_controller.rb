class CommentsController < ApplicationController
  def index
    @comments = Post.find(params[:post_id]).comments
  end

  def new
    @comment = Post.find(params[:post_id]).comments.new
  end
end