# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'user@test.com'
    password 'testpass'
    family_men 1
    family_women 1
    notification 0
  end
end
