require 'spec_helper'

describe "sentence_spelling_patterns/edit" do
  before(:each) do
    @sentence_spelling_pattern = assign(:sentence_spelling_pattern, stub_model(SentenceSpellingPattern,
      :sentence => nil,
      :spelling_pattern => nil
    ))
  end

  it "renders the edit sentence_spelling_pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sentence_spelling_patterns_path(@sentence_spelling_pattern), :method => "post" do
      assert_select "input#sentence_spelling_pattern_sentence", :name => "sentence_spelling_pattern[sentence]"
      assert_select "input#sentence_spelling_pattern_spelling_pattern", :name => "sentence_spelling_pattern[spelling_pattern]"
    end
  end
end
