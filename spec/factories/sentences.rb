# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sentence do
    language_project nil
    reference "MyString"
    body "MyString"
  end
end
