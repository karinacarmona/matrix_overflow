class PostsController < ApplicationController

  def index
    @posts = Category.find(params[:category_id]).posts
  end

  def show
    @post = Category.find(params[:category_id]).posts.find(params[:id])
  end

  def new
    @post = Category.find(params[:category_id]).posts.new
  end

  def create
    category = Category.find(params[:category_id])
    @post = category.posts.new(post_params)
    if @post.save
      redirect_to category_post_path id: @post.id
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end