class ApplicationController < ActionController::Base
  respond_to :json

  private

  def requires_parameters(*required)
    required.each do |p|
      raise EmberBlog::InvalidParameters.new(p) unless params.has_key?(p)
    end
  end
end
