class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
       order = Order.create
       session[:order_id] = order.id
       order
    end
  end

# 	def current_order
# 		if !session[:order_id].nil?
# 			Order.find(session[:order_id])
# 		else
# 			last_pending_customer_order || Order.new(customer: current_user)
# 		end
# 	end
# private

# 	def last_pending_customer_order
# 		Order.in_progress.by_customer(current_user).last
# 	end

end
