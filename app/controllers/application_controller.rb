class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    drvise_parameters_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  # ここから
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

end
