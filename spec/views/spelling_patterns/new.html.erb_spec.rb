require 'spec_helper'

describe "spelling_patterns/new" do
  before(:each) do
    assign(:spelling_pattern, stub_model(SpellingPattern,
      :language_project => nil,
      :grapheme => nil,
      :phoneme => nil,
      :word_frequency => "",
      :text_frequency => 1
    ).as_new_record)
  end

  it "renders new spelling_pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spelling_patterns_path, :method => "post" do
      assert_select "input#spelling_pattern_language_project", :name => "spelling_pattern[language_project]"
      assert_select "input#spelling_pattern_grapheme", :name => "spelling_pattern[grapheme]"
      assert_select "input#spelling_pattern_phoneme", :name => "spelling_pattern[phoneme]"
      assert_select "input#spelling_pattern_word_frequency", :name => "spelling_pattern[word_frequency]"
      assert_select "input#spelling_pattern_text_frequency", :name => "spelling_pattern[text_frequency]"
    end
  end
end
