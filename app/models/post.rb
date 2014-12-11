class Post < ActiveRecord::Base
  validates  :title, :content, presence: true
  has_many   :votes, as :voteable
  belongs_to :category
  belongs_to :user
  has_many   :comments
end
