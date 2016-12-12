class StylesController < ApplicationController
	def index
		@styles = Style.all
	end
	def new
	end
	def create
  	@style = Style.new(style_params)
 	 @style.save
	redirect_to @style
	end
	
	def show
  		@style = Style.find(params[:id])
  	end


private  	
  	def style_params
    params.require(:styles).permit(:title, :text, :pic)
  	end
end
