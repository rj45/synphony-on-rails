require 'spec_helper'

describe "graphemes/new" do
  before(:each) do
    assign(:grapheme, stub_model(Grapheme,
      :language_project => nil,
      :name => "MyString",
      :category => "MyString",
      :zero_spaced => false,
      :word_frequency => 1,
      :text_frequency => 1
    ).as_new_record)
  end

  it "renders new grapheme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => graphemes_path, :method => "post" do
      assert_select "input#grapheme_language_project", :name => "grapheme[language_project]"
      assert_select "input#grapheme_name", :name => "grapheme[name]"
      assert_select "input#grapheme_category", :name => "grapheme[category]"
      assert_select "input#grapheme_zero_spaced", :name => "grapheme[zero_spaced]"
      assert_select "input#grapheme_word_frequency", :name => "grapheme[word_frequency]"
      assert_select "input#grapheme_text_frequency", :name => "grapheme[text_frequency]"
    end
  end
end
