# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grapheme do
    language_project nil
    name "MyString"
    category "MyString"
    zero_spaced false
    word_frequency 1
    text_frequency 1
  end
end
