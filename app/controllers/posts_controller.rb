class PostsController < ApplicationController
 	before_action :logged_in_user, only: [:index, :show, :new, :create]
 	before_action :admin_user, only: [:edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new 
		@categories = Category.all
	end

	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params)
		@post.category_id = params[:category_id]

		if(@post.save)
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])
		@categories = Category.all
	end

	def update
		@post = Post.find(params[:id])
		@post.update_attribute(:photo, params[:post][:photo])
		@post.category_id = params[:category_id]

		if(@post.update(post_params))
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :price, :photo)
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
