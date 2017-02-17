class StylesController < ApplicationController
	def index
		@styles = Style.all
	end
	def new
		@style = Style.new
	end
	def create
		@style = Style.new(style_params)
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
private  	
  	def style_params
    params.require(:style).permit(:title, :text, :pictures)
  	end
end