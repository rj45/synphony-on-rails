require 'spec_helper'

describe "language_projects/show" do
  before(:each) do
    @language_project = assign(:language_project, stub_model(LanguageProject,
      :slug => "Slug",
      :english_name => "English Name",
      :local_name => "Local Name",
      :script => "Script",
      :public => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Slug/)
    rendered.should match(/English Name/)
    rendered.should match(/Local Name/)
    rendered.should match(/Script/)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
