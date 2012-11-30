# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :word do
    language_project nil
    name "MyString"
    text_frequency 1
  end
end
