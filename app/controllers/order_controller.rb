class OrderController < ApplicationController

	def confirm
		flash[:success]="You will recive info about your order"

	end
end
