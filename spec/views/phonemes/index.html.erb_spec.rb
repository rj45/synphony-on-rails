require 'spec_helper'

describe "phonemes/index" do
  before(:each) do
    assign(:phonemes, [
      stub_model(Phoneme,
        :language_project => nil,
        :name => "Name",
        :ipa => "Ipa",
        :category => "Category",
        :word_frequency => 1,
        :text_frequency => 2
      ),
      stub_model(Phoneme,
        :language_project => nil,
        :name => "Name",
        :ipa => "Ipa",
        :category => "Category",
        :word_frequency => 1,
        :text_frequency => 2
      )
    ])
  end

  it "renders a list of phonemes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ipa".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
