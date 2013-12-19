# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    first_name "MyString"
    last_name "MyString"
    email "MyString@string.com"
    birthplace "MyString"
    style_id 1
  end
end
