class ApplicationController < ActionController::Base
  respond_to :json

  protect_from_forgery

  protected

  def minimum_parameters
    param.slice(*minimum_parameter_keys)
  end

  private

  def requires_parameters(*required)
    required.each do |p|
      raise EmberBlog::InvalidParameters.new(p) unless params.has_key?(p)
    end
  end
end
