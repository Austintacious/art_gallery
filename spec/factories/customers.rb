# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    first_name "MyString"
    last_name "MyString"
    email "MyString@mystring.com"
    amount_spent "9.99"
  end
end
