class CommentsController < ApplicationController
  def index
    @comments = Post.find(params[:post_id]).comments
  end
end