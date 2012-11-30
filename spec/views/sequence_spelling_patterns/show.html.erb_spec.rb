require 'spec_helper'

describe "sequence_spelling_patterns/show" do
  before(:each) do
    @sequence_spelling_pattern = assign(:sequence_spelling_pattern, stub_model(SequenceSpellingPattern,
      :position => 1,
      :sequence => nil,
      :spelling_pattern => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
