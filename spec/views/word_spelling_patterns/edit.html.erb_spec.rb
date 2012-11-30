require 'spec_helper'

describe "word_spelling_patterns/edit" do
  before(:each) do
    @word_spelling_pattern = assign(:word_spelling_pattern, stub_model(WordSpellingPattern,
      :position => 1,
      :word => nil,
      :spelling_pattern => nil
    ))
  end

  it "renders the edit word_spelling_pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => word_spelling_patterns_path(@word_spelling_pattern), :method => "post" do
      assert_select "input#word_spelling_pattern_position", :name => "word_spelling_pattern[position]"
      assert_select "input#word_spelling_pattern_word", :name => "word_spelling_pattern[word]"
      assert_select "input#word_spelling_pattern_spelling_pattern", :name => "word_spelling_pattern[spelling_pattern]"
    end
  end
end
