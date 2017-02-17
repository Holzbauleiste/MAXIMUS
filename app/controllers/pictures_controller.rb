class PicturesController < ApplicationController

def new
	@style = Style.find(params[:style_id])
	@pictures = @stlye.pictures.build
end

def create
	@pictures = Pictures.new(params[:pictures])
	if @pictures.save
		puts "Photo Saved"
	end
end

def show
	@picture = Picture.find(params[:id])
end

end