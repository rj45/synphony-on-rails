require 'spec_helper'

describe "phonemes/new" do
  before(:each) do
    assign(:phoneme, stub_model(Phoneme,
      :language_project => nil,
      :name => "MyString",
      :ipa => "MyString",
      :category => "MyString",
      :word_frequency => 1,
      :text_frequency => 1
    ).as_new_record)
  end

  it "renders new phoneme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phonemes_path, :method => "post" do
      assert_select "input#phoneme_language_project", :name => "phoneme[language_project]"
      assert_select "input#phoneme_name", :name => "phoneme[name]"
      assert_select "input#phoneme_ipa", :name => "phoneme[ipa]"
      assert_select "input#phoneme_category", :name => "phoneme[category]"
      assert_select "input#phoneme_word_frequency", :name => "phoneme[word_frequency]"
      assert_select "input#phoneme_text_frequency", :name => "phoneme[text_frequency]"
    end
  end
end
