class CommentsController < ApplicationController
	before_action :set_styles

	def index
		@comments = @style.comments.order('created_at asc')
	end
	def create
		@comment = @style.comments.build(comment_params)
		@comment.user_id = current_user.id
		@comment.user_name = current_user.username
		if @comment.save
			redirect_to @style
			else
			redirect_to root_path 
		end
	end
	def destroy
		@comment = @style.comments.find(params[:id])
		if @comment.user_id == current_user.id
			@comment.destroy
			redirect_to @style
		end
	end
	def show
	end

	def comment_params
		params.require(:comment).permit(:content, :username)
	end
	def set_styles
		@style = Style.find(params[:style_id])
	end
end
