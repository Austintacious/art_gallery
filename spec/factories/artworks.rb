# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artwork do
    name "Saturn Devours His Son"
    artist_id 1
    sale_id 1
    date_created "2013-12-19"
    cost "9.99"
    availability true
  end
end
