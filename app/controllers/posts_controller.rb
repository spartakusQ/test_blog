class PostsController < ApplicationController

  def show
   @post = Post.find(params[:id])
 end
  def index
    @post = Post.all
  end






 def new

 end

  def create
  @post = Post.new(post_params)
  @post.save
  render 'show'
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
