require 'spec_helper'

describe "sequences/index" do
  before(:each) do
    assign(:sequences, [
      stub_model(Sequence,
        :language_project => nil,
        :name => "Name"
      ),
      stub_model(Sequence,
        :language_project => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of sequences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
