class Post < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  validates :name, presence: true, length: { minimum: 5 }, uniqueness: { case_sensitive: false }
  validates :url, presence: true, format: { with: /https?:\/\/[\S]+/ }
end
