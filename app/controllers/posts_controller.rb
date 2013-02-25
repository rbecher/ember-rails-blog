class PostsController < ApplicationController

  # GET /posts.json
  def index
    posts = Post.all
    render json: posts, meta: { total: posts.count }
  end

  # GET /posts/1.json
  def show
    requires_parameters(*[:id])
    post = Post.find(params[:id])
    render json: post
  end

  # POST /posts.json
  def create
    requires_parameters(*minimum_parameter_keys)
    post = Post.create(min_params)
    if post.save
      render json: nil, location: post_path(post), :status => :created
    end
  end

  private

  def minimum_parameter_keys
    [:title, :body]
  end

  def min_params
    params.slice(*minimum_parameter_keys)
  end
end
