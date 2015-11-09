class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
helper_method :calcEndday
  # devise で各種個人情報を入力できるように修正
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :email_second,  :family_men, :family_women, :zipcode, :address, :notification, :password, :password_confirmation, :current_password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :email_second, :family_men, :family_women, :zipcode, :address, :notification, :password, :password_confirmation, :current_password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :email_second, :family_men, :family_women, :zipcode, :address, :notification, :password, :password_confirmation, :current_password) }
  end

  # devise でログイン後のリダイレクト先を変更
  def after_sign_in_path_for(resource)
    stocks_path
  end
  def calcEndday(stock)
    end_day = stock.created_at + stock.increase_day.days + ((stock.num * stock.unit) / ( stock.user.family_men*stock.item.spent_men + stock.user.family_women*stock.item.spent_women )).to_i.days
    return end_day
  end
end
