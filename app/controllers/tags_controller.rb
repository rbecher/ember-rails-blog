class TagsController < ApplicationController

  # GET /tags.json
  def index
    tags = Tag.all
    render json: tags, meta: { total: tags.count }
  end

  # GET /tags/1.json
  def show
    requires_parameters(*[:id])
    tag = Tag.find(params[:id])
    render json: tag
  end

  # POST /tags.json
  def create
    requires_parameters(*minimum_parameter_keys)
    tag = Tag.create(min_params)
    if tag.save
      render json: tag, location: tag_path(tag), status: :created
    else
      render json: tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH|PUT /tags/1.json
  def update
    requires_parameters(*minimum_parameter_keys)
    requires_parameters(*[:id])
    tag = Tag.find(params[:id])

    if tag.update_attributes(min_params)
      head :no_content
    else
      render json: tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tags/1.json
  def destroy
    requires_parameters(*[:id])
    tag = Post.find(params[:id])
    tag.destroy

    head :no_content
  end

  private

  def minimum_parameter_keys
    [:name]
  end

  def min_params
    params.slice(*minimum_parameter_keys)
  end
end