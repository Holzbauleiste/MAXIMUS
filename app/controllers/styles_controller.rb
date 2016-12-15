class StylesController < ApplicationController
	def index
		@styles = Style.all
	end
	def new
	@style = Style.new(style_params)
	end
	def create
	3.times do
		@styles.uploads.build
	end
 	@style.save
	redirect_to @style
	end
	
	def show
  		@style = Style.find(params[:id])
  	end


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
  	end
end
