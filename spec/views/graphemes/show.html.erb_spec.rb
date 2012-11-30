require 'spec_helper'

describe "graphemes/show" do
  before(:each) do
    @grapheme = assign(:grapheme, stub_model(Grapheme,
      :language_project => nil,
      :name => "Name",
      :category => "Category",
      :zero_spaced => false,
      :word_frequency => 1,
      :text_frequency => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
    rendered.should match(/Category/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
