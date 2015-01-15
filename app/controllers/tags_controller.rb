class TagsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @tag = Tag.new
  end
end
