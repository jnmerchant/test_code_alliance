class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    software_path(current_user) #your path
  end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :research_area,
      :contact_phone, :entity_size, :organization, :role])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :research_area,
      :contact_phone, :entity_size, :organization, :role])
  end
end
