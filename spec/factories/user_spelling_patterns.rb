# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_spelling_pattern do
    position 1
    user nil
    spelling_pattern nil
    focus false
  end
end
