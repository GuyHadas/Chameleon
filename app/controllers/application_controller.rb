class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
     devise_parameter_sanitizer.for(:account_update) << :name
     devise_parameter_sanitizer.for(:sign_up) << :iscompany
     devise_parameter_sanitizer.for(:account_update) << :iscompany
     devise_parameter_sanitizer.for(:sign_up) << :isadvertiser
     devise_parameter_sanitizer.for(:account_update) << :isadvertiser
     devise_parameter_sanitizer.for(:sign_up) << :usertype
     devise_parameter_sanitizer.for(:account_update) << :usertype
     devise_parameter_sanitizer.for(:sign_up) << :typeofuser
     devise_parameter_sanitizer.for(:account_update) << :typeofuser  
  end
end
