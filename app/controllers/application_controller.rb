class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :resource, :resource_name, :devise_mapping
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    teams_path
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :username, :phone])
  end

  private
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

end
