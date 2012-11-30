require 'spec_helper'

describe "spelling_patterns/show" do
  before(:each) do
    @spelling_pattern = assign(:spelling_pattern, stub_model(SpellingPattern,
      :language_project => nil,
      :grapheme => nil,
      :phoneme => nil,
      :word_frequency => "",
      :text_frequency => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
