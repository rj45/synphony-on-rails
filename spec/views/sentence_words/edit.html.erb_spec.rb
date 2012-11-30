require 'spec_helper'

describe "sentence_words/edit" do
  before(:each) do
    @sentence_word = assign(:sentence_word, stub_model(SentenceWord,
      :position => 1,
      :word => nil,
      :sentence => nil
    ))
  end

  it "renders the edit sentence_word form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sentence_words_path(@sentence_word), :method => "post" do
      assert_select "input#sentence_word_position", :name => "sentence_word[position]"
      assert_select "input#sentence_word_word", :name => "sentence_word[word]"
      assert_select "input#sentence_word_sentence", :name => "sentence_word[sentence]"
    end
  end
end
