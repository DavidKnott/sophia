FactoryGirl.define do

  # factory :question do
  #   content "What is the meaning of life?"
  #   user_id 1
  # end
  
  factory :user do
    first_name {Faker::Name.name}
    last_name {Faker::Name.name}
    username {Faker::Name.name}
    sequence :email do |n|
      Faker::Internet.email + n.to_s
    end
    password "1234"
    password_confirmation "1234"
  end



end