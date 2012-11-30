require 'spec_helper'

describe "sequences/show" do
  before(:each) do
    @sequence = assign(:sequence, stub_model(Sequence,
      :language_project => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
  end
end
