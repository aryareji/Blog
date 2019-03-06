#  show_details  post controller
class PostsController < ApplicationController
  def new; end

  def index; end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
