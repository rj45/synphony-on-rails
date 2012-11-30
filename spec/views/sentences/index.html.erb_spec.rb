require 'spec_helper'

describe "sentences/index" do
  before(:each) do
    assign(:sentences, [
      stub_model(Sentence,
        :language_project => nil,
        :reference => "Reference",
        :body => "Body"
      ),
      stub_model(Sentence,
        :language_project => nil,
        :reference => "Reference",
        :body => "Body"
      )
    ])
  end

  it "renders a list of sentences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
