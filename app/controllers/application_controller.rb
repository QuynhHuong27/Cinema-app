class ApplicationController < ActionController::Base
  KEY = %i(name dat_of_birth phone_number).freeze

  include ApplicationHelper
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: KEY)
  end
end
