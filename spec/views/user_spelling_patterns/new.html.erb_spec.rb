require 'spec_helper'

describe "user_spelling_patterns/new" do
  before(:each) do
    assign(:user_spelling_pattern, stub_model(UserSpellingPattern,
      :position => 1,
      :user => nil,
      :spelling_pattern => nil,
      :focus => false
    ).as_new_record)
  end

  it "renders new user_spelling_pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_spelling_patterns_path, :method => "post" do
      assert_select "input#user_spelling_pattern_position", :name => "user_spelling_pattern[position]"
      assert_select "input#user_spelling_pattern_user", :name => "user_spelling_pattern[user]"
      assert_select "input#user_spelling_pattern_spelling_pattern", :name => "user_spelling_pattern[spelling_pattern]"
      assert_select "input#user_spelling_pattern_focus", :name => "user_spelling_pattern[focus]"
    end
  end
end
