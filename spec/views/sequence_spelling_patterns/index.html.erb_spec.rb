require 'spec_helper'

describe "sequence_spelling_patterns/index" do
  before(:each) do
    assign(:sequence_spelling_patterns, [
      stub_model(SequenceSpellingPattern,
        :position => 1,
        :sequence => nil,
        :spelling_pattern => nil
      ),
      stub_model(SequenceSpellingPattern,
        :position => 1,
        :sequence => nil,
        :spelling_pattern => nil
      )
    ])
  end

  it "renders a list of sequence_spelling_patterns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
