require 'spec_helper'

describe "sequences/edit" do
  before(:each) do
    @sequence = assign(:sequence, stub_model(Sequence,
      :language_project => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit sequence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sequences_path(@sequence), :method => "post" do
      assert_select "input#sequence_language_project", :name => "sequence[language_project]"
      assert_select "input#sequence_name", :name => "sequence[name]"
    end
  end
end
