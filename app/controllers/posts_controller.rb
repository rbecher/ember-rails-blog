class PostsController < ApplicationController

  # GET /posts.json
  def index
    if params[:tag_name]
      posts = Post.tagged_with(params[:tag_name])
    else
      posts = Post.all
    end
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
      render json: post, location: post_path(post), status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  # PATCH|PUT /posts/1.json
  def update
    requires_parameters(*minimum_parameter_keys)
    requires_parameters(*[:id])
    post = Post.find(params[:id])

    if post.update_attributes(min_params)
      head :no_content
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1.json
  def destroy
    requires_parameters(*[:id])
    post = Post.find(params[:id])
    post.destroy

    head :no_content
  end

  private

  def minimum_parameter_keys
    [:title, :body, :tag_list]
  end

  def min_params
    params.slice(*minimum_parameter_keys)
  end
end
