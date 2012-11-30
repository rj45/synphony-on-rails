require 'spec_helper'

describe "sequence_spelling_patterns/new" do
  before(:each) do
    assign(:sequence_spelling_pattern, stub_model(SequenceSpellingPattern,
      :position => 1,
      :sequence => nil,
      :spelling_pattern => nil
    ).as_new_record)
  end

  it "renders new sequence_spelling_pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sequence_spelling_patterns_path, :method => "post" do
      assert_select "input#sequence_spelling_pattern_position", :name => "sequence_spelling_pattern[position]"
      assert_select "input#sequence_spelling_pattern_sequence", :name => "sequence_spelling_pattern[sequence]"
      assert_select "input#sequence_spelling_pattern_spelling_pattern", :name => "sequence_spelling_pattern[spelling_pattern]"
    end
  end
end
