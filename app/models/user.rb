class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, :username, :email, :password, :password_confirmation, presence: true
  has_many :questions

  enum role: %w(default admin)
end