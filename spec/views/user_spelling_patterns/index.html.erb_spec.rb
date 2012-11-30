require 'spec_helper'

describe "user_spelling_patterns/index" do
  before(:each) do
    assign(:user_spelling_patterns, [
      stub_model(UserSpellingPattern,
        :position => 1,
        :user => nil,
        :spelling_pattern => nil,
        :focus => false
      ),
      stub_model(UserSpellingPattern,
        :position => 1,
        :user => nil,
        :spelling_pattern => nil,
        :focus => false
      )
    ])
  end

  it "renders a list of user_spelling_patterns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
