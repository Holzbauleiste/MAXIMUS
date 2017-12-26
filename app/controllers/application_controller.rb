class ApplicationController < ActionController::Base
#before_action :configuring, if: :devise_controller?

#######--- Aktuelle Seite Speichern ---#######

protected


private

def save_page
    store_location_for(:user, request.url)
end

def after_sign_out_path_for(resource)
    request.referrer || root_path
end
end