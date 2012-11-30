# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :language_project do
    slug "MyString"
    english_name "MyString"
    local_name "MyString"
    script "MyString"
    public false
    user nil
  end
end
