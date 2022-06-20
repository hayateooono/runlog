class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:profile,:birth_day,:hour_time,:min_time,:sec_time])
    devise_parameter_sanitizer.permit(:account_update,keys: [:nickname,:profile,:birth_day,:hour_time,:min_time,:sec_time])
  end
end
