require 'spec_helper'

describe "sentence_words/index" do
  before(:each) do
    assign(:sentence_words, [
      stub_model(SentenceWord,
        :position => 1,
        :word => nil,
        :sentence => nil
      ),
      stub_model(SentenceWord,
        :position => 1,
        :word => nil,
        :sentence => nil
      )
    ])
  end

  it "renders a list of sentence_words" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
