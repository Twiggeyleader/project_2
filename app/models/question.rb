class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers


  # validates :username, presence: true
  # validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  # validates :password, presence: true, confirmation: true, length: { in: 6..20 }
end
