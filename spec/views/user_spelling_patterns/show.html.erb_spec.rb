require 'spec_helper'

describe "user_spelling_patterns/show" do
  before(:each) do
    @user_spelling_pattern = assign(:user_spelling_pattern, stub_model(UserSpellingPattern,
      :position => 1,
      :user => nil,
      :spelling_pattern => nil,
      :focus => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/false/)
  end
end
