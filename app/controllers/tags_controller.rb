class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = Tag.new   
  end

  def create
    @post = Post.find(params[:post_id])
    @post.tags.create(tag_params) #####
    redirect_to posts_path
  end

  def tag_params
    # params.require(:post).permit(:category, :tag_ids => []) ###
    params.require(:tag).permit(:category) ###
  end
end
