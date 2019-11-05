class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true, format: { with: /\A.*@.*\.com\z/ }
  # TODO: Add some callbacks
end
