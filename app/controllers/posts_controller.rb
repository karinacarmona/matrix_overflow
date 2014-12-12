class PostsController < ApplicationController

  def index
    @posts = Category.find(params[:category_id]).posts
  end

  def new
    @post = Category.find(params[:category_id]).posts.new
  end

end