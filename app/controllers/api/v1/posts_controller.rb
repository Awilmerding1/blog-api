class Api::V1::PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def create
    post = post.new(post_params)
    if post.save
      render json: post
    else
      render json: {error: 'Post was not created'}
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
