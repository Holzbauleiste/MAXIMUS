class ApplicationController < ActionController::Base
before_action :configuring, if: :devise_controller?
#######--- Aktuelle Seite Speichern ---#######
before_filter :save_page, :unless => :devise_controller?
protected

def configuring
	added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
	devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
	devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end
private

def save_page
    store_location_for(:user, request.url)
end

def after_sign_out_path_for(resource)
    request.referrer || root_path
end
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_in, keys: [:username]) do |user_params|
  end
end
end