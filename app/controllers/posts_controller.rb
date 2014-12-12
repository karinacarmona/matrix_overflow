class PostsController < ApplicationController

  def index
    @posts = Category.find(params[:category_id]).posts
  end

  def new
    @post = Category.find(params[:category_id]).posts.new
  end

  def create
    category = Category.find(params[:category_id])
    @post = category.posts.new(params[:post])

    if @post.save
      redirect_to root_path
    else
      render :new
    end

  end

end