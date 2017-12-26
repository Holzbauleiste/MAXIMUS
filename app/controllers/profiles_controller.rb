class ProfilesController < ApplicationController
	before_action :set_user
	before_action :owned_profile, only: [:edit, :update]

	def show
		if @user
			if user_signed_in?
				if current_user == @user
					@own_profile = true
					else
					@own_profile = false
				end
				else
				@own_profile = false
			end
			if @user.styles.exists?
				@posts = @user.styles
				else
				@posts = nil
			end
		end
	end

	def edit
	end

	def update
		if @user.update(profile_params)
			flash[:success] = "Dein Profil wurde geändert!"
			redirect_to profile_path(@user.username)
		else
			flash[:alert] = "ERROR!"
			redirect_to contact_path
		end
	end

	private
	
	def profile_params
		params.require(:user).permit(:avatar, :status)
	end	
	
	def set_user
		@user = User.find_by(username: params[:username])
	end

	def owned_profile
		unless current_user == @user
			redirect_to root_path
			flash[:alert] = "Das ist nicht dein Profil! Du Schwanzus Longus!"
		end
	end
end