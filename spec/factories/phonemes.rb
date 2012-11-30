# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phoneme do
    language_project nil
    name "MyString"
    ipa "MyString"
    category "MyString"
    word_frequency 1
    text_frequency 1
  end
end
