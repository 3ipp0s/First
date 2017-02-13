class CommentsController < ApplicationController
	before_action :logged_in_user, only: [:create]
	before_action :admin_user, only: [:destroy]

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

	private

	def comment_params
	params.require(:comment).permit(:username, :body)
	end

	def logged_in_user
   		unless logged_in?
      		flash[:danger] = "Please log in."
      		redirect_to login_url
    	end
  	end
  	
  	def admin_user
    	redirect_to(home_url) unless current_user.admin?
  	end

end
