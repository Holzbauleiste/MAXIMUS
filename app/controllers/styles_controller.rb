class StylesController < ApplicationController
	def index
		@styles = Style.all
		@pictures = @styles.pictures
	end
	def new
		@style = Style.new
	end
	def create
		@style = Style.new
 		@style.save
 		if params[:images]
 			params[:images].each do |image|
 				@style.pictures.crete(image: image)
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
end