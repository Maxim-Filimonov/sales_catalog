# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_user do
    email 'test@test.com'
    password 'test123'
    password_confirmation 'test123'
  end
end
