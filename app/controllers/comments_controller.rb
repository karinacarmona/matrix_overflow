class CommentsController < ApplicationController
  def index
    @comments = Post.find(params[:post_id]).comments
  end

  def new
    @comment = Post.find(params[:post_id]).comments.new
  end

  def create
    post = Post.find(params[:post_id])
    p params
    @comment = post.comments.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end
end