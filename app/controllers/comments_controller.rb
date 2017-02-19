class CommentsController < ApplicationController
	before_action :set_post
	
	def show
		@comment = Comment.new
	end
	def new
		@comment = Comment.new
	end

	def create
		@comment = @style.comments.build(comment_params)
		@comment.user_id = current_user.id
		if @comment.save
		else
			flash[:alert] = "Check the comment form, something went horribly wrong."
    		render root_path
		end
	end
	def edit
	end
	def destroy
		@comment = @style.comments.find(params[:id])
		@comment.destroy
	end

private
	def comment_params
		params.require.premit(:content)
	end

	def set_post
		@style = Style.find(params[:style_id])
	end
end
