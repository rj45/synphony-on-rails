require 'spec_helper'

describe "sentences/new" do
  before(:each) do
    assign(:sentence, stub_model(Sentence,
      :language_project => nil,
      :reference => "MyString",
      :body => "MyString"
    ).as_new_record)
  end

  it "renders new sentence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sentences_path, :method => "post" do
      assert_select "input#sentence_language_project", :name => "sentence[language_project]"
      assert_select "input#sentence_reference", :name => "sentence[reference]"
      assert_select "input#sentence_body", :name => "sentence[body]"
    end
  end
end
