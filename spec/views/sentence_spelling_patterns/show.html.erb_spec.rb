require 'spec_helper'

describe "sentence_spelling_patterns/show" do
  before(:each) do
    @sentence_spelling_pattern = assign(:sentence_spelling_pattern, stub_model(SentenceSpellingPattern,
      :sentence => nil,
      :spelling_pattern => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
