require 'spec_helper'

describe "words/new" do
  before(:each) do
    assign(:word, stub_model(Word,
      :language_project => nil,
      :name => "MyString",
      :text_frequency => 1
    ).as_new_record)
  end

  it "renders new word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => words_path, :method => "post" do
      assert_select "input#word_language_project", :name => "word[language_project]"
      assert_select "input#word_name", :name => "word[name]"
      assert_select "input#word_text_frequency", :name => "word[text_frequency]"
    end
  end
end
