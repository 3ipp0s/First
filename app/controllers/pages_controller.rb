class PagesController < ApplicationController
	def index
		
	end

	def about
		@title = 'About as!';
		@content = 'This is about page';
	end
end
