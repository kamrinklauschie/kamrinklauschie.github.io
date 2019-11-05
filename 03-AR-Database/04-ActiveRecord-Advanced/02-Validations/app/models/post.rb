class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates :user, presence: true
  validates :name, presence: true, length: { minimum: 5 }
  validates :url, presence: true, format: { with: /https?:\/\/[\S]+/ }
end
