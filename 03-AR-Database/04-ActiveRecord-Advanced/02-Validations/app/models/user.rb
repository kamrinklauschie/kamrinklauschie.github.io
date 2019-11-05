class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true, format: { with: /\A.*@.*\.com\z/ }
  # TODO: Add some callbacks
  before_validation :strip_email

  private

  def strip_email
    self.email = email.strip unless email.nil?
  end
end
