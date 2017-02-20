class Comment < ApplicationRecord
  belongs_to :post
  validates :username, presence: true,
					 length: {minimum: 3, maximum: 15}
	
  validates :body, presence: true,
					 length: {minimum: 5, maximum: 35}
end
