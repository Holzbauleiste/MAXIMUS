class StylesController < ApplicationController
	def index
		@styles = Style.all
		@pictures = @styles.pictures
	end
	def new
<<<<<<< HEAD
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
=======
	@style = Style.new(style_params)
	end
	def create
	3.times do
		@styles.uploads.build
	end
 	@style.save
	redirect_to @style
>>>>>>> b34782df85dde61467cdcb35deed810da5d55e08
	end
	
	def show
  		@style = Style.find(params[:id])
  		@pictures = @style.pictures
  	end

<<<<<<< HEAD
  	def edit
  		@style = Style.find(params[:id])
  		@style.save
=======

private  	
  	def style_params
    params.permit(:title, :text, :pic)
    #params.require(:styles).
  	#permit(
    #:title,
    #:text,
    #:pic,
    #:uploads
    #)
>>>>>>> b34782df85dde61467cdcb35deed810da5d55e08
  	end
end