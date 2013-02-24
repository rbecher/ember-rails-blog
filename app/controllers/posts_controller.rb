class PostsController < ApplicationController

  def index
    posts = Post.all
    render json: posts, meta: { total: posts.count }
  end

  # GET /posts/1.json
  def show
    post = Post.find(:params[:id])
    render json: post
  end
end
