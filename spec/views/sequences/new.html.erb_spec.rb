require 'spec_helper'

describe "sequences/new" do
  before(:each) do
    assign(:sequence, stub_model(Sequence,
      :language_project => nil,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new sequence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sequences_path, :method => "post" do
      assert_select "input#sequence_language_project", :name => "sequence[language_project]"
      assert_select "input#sequence_name", :name => "sequence[name]"
    end
  end
end
