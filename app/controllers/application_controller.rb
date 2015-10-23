class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  # devise �Ŋe��l������͂ł���悤�ɏC��
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :family_men, :family_women, :zipcode, :address, :password, :password_confirmation, :current_password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :family_men, :family_women, :zipcode, :address, :password, :password_confirmation, :current_password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :family_men, :family_women, :zipcode, :address, :password, :password_confirmation, :current_password) }
  end

  # devise �Ń��O�C����̃��_�C���N�g���ύX
  def after_sign_in_path_for(resource)
    stocks_path
  end

end
