class Comment < ActiveRecord::Base
  validates  :content, presence: true
  has_many :votes, as: :voteable
  belongs_to :user
  belongs_to :post
end
