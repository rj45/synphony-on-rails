require 'spec_helper'

describe "phonemes/show" do
  before(:each) do
    @phoneme = assign(:phoneme, stub_model(Phoneme,
      :language_project => nil,
      :name => "Name",
      :ipa => "Ipa",
      :category => "Category",
      :word_frequency => 1,
      :text_frequency => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
    rendered.should match(/Ipa/)
    rendered.should match(/Category/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
