class PicturesController < ApplicationController

def new
	@style = Style.find(params[:styles_id])
	@pictures = @style.pictures.build
end

def create
	@pictures = Pictures.new(params[:pictures])
	if @pictures.save
		puts "Pictures Saved"
	else
		redirect_to @style
	end
end

def show
	@pictures = Picture.find(params[:id])
end

end