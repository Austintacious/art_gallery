# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale, :class => 'Sales' do
    customer_id 1
    date "2013-12-19"
  end
end
