# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :api_key do
    user nil
    auth_token "MyString"
    application "MyString"
    version "MyString"
  end
end
