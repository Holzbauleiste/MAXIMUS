class RegistrationsController < Devise::RegistrationsController
	before_action :configure_permitted_parameters


	def configure_permitted_parameters
		#added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :status, :avatar]
		#devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
		#devise_parameter_sanitizer.permit :account_update, keys: added_attrs
		devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email])
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :status])
		devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :status, :avatar])

	end

end
