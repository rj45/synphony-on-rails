require 'spec_helper'

describe "words/index" do
  before(:each) do
    assign(:words, [
      stub_model(Word,
        :language_project => nil,
        :name => "Name",
        :text_frequency => 1
      ),
      stub_model(Word,
        :language_project => nil,
        :name => "Name",
        :text_frequency => 1
      )
    ])
  end

  it "renders a list of words" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
