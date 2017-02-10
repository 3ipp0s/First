class PagesController < ApplicationController
	def about
		@title = 'About as!';
		@content = 'This is about page';
	end
end
