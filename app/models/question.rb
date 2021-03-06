class Question < ActiveRecord::Base
  validates :content, presence: true
  has_many :answers
  belongs_to :author, class_name:"User", foreign_key: "user_id"
end