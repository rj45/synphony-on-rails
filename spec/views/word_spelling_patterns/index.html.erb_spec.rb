require 'spec_helper'

describe "word_spelling_patterns/index" do
  before(:each) do
    assign(:word_spelling_patterns, [
      stub_model(WordSpellingPattern,
        :position => 1,
        :word => nil,
        :spelling_pattern => nil
      ),
      stub_model(WordSpellingPattern,
        :position => 1,
        :word => nil,
        :spelling_pattern => nil
      )
    ])
  end

  it "renders a list of word_spelling_patterns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
