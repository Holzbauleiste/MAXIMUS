class StylesController < ApplicationController
	def index
		@styles = Style.all
	end
	def new
		@style = current_user.styles.build
	end
	def create
		@style = current_user.styles.build(style_params)
		@style.user_name = current_user.username
 		if @style.save
 			if params[:images]
 				params[:images].each do |image|
 					@style.pictures.create(image: image)
 				end
 			end
		end
		redirect_to @style
	end
	
	def show
  		@style = Style.find(params[:id])
  		@pictures = @style.pictures
  	end
  	def edit
  		@style = Style.find(params[:id])
  		@style.save
  	end
  	def destroy
  		@style = Style.find(params[:id])
		@style.destroy
		redirect_to styles_path
  	end

private

  	def style_params
    params.require(:style).permit(:title, :text, :pictures)
  	end
end