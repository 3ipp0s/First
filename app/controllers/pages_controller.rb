class PagesController < ApplicationController
	def index
		return @posts=Post.all
	end

	def about
		@title = 'About as!';
		@content = 'This is about page';
	end
end
