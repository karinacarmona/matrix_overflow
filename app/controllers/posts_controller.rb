class PostsController < ApplicationController

  def index
    @posts = Category.find(params[:category_id]).posts
  end

end