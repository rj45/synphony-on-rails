require 'spec_helper'

describe "graphemes/index" do
  before(:each) do
    assign(:graphemes, [
      stub_model(Grapheme,
        :language_project => nil,
        :name => "Name",
        :category => "Category",
        :zero_spaced => false,
        :word_frequency => 1,
        :text_frequency => 2
      ),
      stub_model(Grapheme,
        :language_project => nil,
        :name => "Name",
        :category => "Category",
        :zero_spaced => false,
        :word_frequency => 1,
        :text_frequency => 2
      )
    ])
  end

  it "renders a list of graphemes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
