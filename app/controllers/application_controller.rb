class ApplicationController < ActionController::Base
before_action :configuring, if: :devise_controller?

protected

def configuring
	added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
	devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
	devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end

end