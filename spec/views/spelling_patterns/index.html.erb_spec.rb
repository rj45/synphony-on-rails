require 'spec_helper'

describe "spelling_patterns/index" do
  before(:each) do
    assign(:spelling_patterns, [
      stub_model(SpellingPattern,
        :language_project => nil,
        :grapheme => nil,
        :phoneme => nil,
        :word_frequency => "",
        :text_frequency => 1
      ),
      stub_model(SpellingPattern,
        :language_project => nil,
        :grapheme => nil,
        :phoneme => nil,
        :word_frequency => "",
        :text_frequency => 1
      )
    ])
  end

  it "renders a list of spelling_patterns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
