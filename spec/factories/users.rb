# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  sequence :email do |n|
    "user_#{n}@factory.com"
  end

  factory :user do
    email "kevin@gmail.com"
    first_name "kevin"
    last_name "chou"
    password_digest "123456"
  end
end
