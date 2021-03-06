require 'spec_helper'

describe "words/show" do
  before(:each) do
    @word = assign(:word, stub_model(Word,
      :language_project => nil,
      :name => "Name",
      :text_frequency => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
