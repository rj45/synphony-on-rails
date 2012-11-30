require 'spec_helper'

describe "sequence_spelling_patterns/edit" do
  before(:each) do
    @sequence_spelling_pattern = assign(:sequence_spelling_pattern, stub_model(SequenceSpellingPattern,
      :position => 1,
      :sequence => nil,
      :spelling_pattern => nil
    ))
  end

  it "renders the edit sequence_spelling_pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sequence_spelling_patterns_path(@sequence_spelling_pattern), :method => "post" do
      assert_select "input#sequence_spelling_pattern_position", :name => "sequence_spelling_pattern[position]"
      assert_select "input#sequence_spelling_pattern_sequence", :name => "sequence_spelling_pattern[sequence]"
      assert_select "input#sequence_spelling_pattern_spelling_pattern", :name => "sequence_spelling_pattern[spelling_pattern]"
    end
  end
end
