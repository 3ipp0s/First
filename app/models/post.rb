class Post < ApplicationRecord
	belongs_to :category
	has_many :order_items
	has_many :comments
	

	default_scope { where(active: true) }

	validates :title, presence: true,
					 length: {minimum: 5, maximum: 28}

	validates :price, presence: true, numericality: { greater_than: 0 }

	has_attached_file :photo, styles: { medium: "400x350>", thumb: "150x150" }, default_url: "/images/:style/missingpost.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
	
end
