require 'spec_helper'

describe "word_spelling_patterns/show" do
  before(:each) do
    @word_spelling_pattern = assign(:word_spelling_pattern, stub_model(WordSpellingPattern,
      :position => 1,
      :word => nil,
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
