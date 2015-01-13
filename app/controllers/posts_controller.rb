class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to '/'
  end

  def post_params
    #permit post?
    params.require(:post).permit(:caption, :picture)
  end

end
