class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :username, :email, :password, :password_confirmation, presence: true
  has_many :questions
  has_many :answers

  enum role: %w(default admin)
end