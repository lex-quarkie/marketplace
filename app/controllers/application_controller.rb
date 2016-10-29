class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def new
    initialize_resource
  end

  def create
    build_resource

    resource.save!
  end

  def update
    resource.update! resource_params
  end

  def destroy
    resource.destroy!
  end
end
