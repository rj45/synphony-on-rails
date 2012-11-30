# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spelling_pattern do
    language_project nil
    grapheme nil
    phoneme nil
    word_frequency ""
    text_frequency 1
  end
end
