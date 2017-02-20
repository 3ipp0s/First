class Order < ApplicationRecord
  has_many :order_items
  
  before_validation :set_order_status
  # before_create :set_order_status
  before_save :update_subtotal
	
	IN_PROGRESS = 0
	PLACED = 1
	CANCELLED = 2
	PAID = 3
	enum status: { in_progress: IN_PROGRESS, placed: PLACED, cancelled: CANCELLED, paid: PAID }

  def subtotal
   order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
 end

private
 def set_order_status
   self.order_status_id = 1 if self.order_status_id.nil?
 end

 def update_subtotal
   self[:subtotal] = subtotal
 end

end
