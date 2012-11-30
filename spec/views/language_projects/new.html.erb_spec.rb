require 'spec_helper'

describe "language_projects/new" do
  before(:each) do
    assign(:language_project, stub_model(LanguageProject,
      :slug => "MyString",
      :english_name => "MyString",
      :local_name => "MyString",
      :script => "MyString",
      :public => false,
      :user => nil
    ).as_new_record)
  end

  it "renders new language_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => language_projects_path, :method => "post" do
      assert_select "input#language_project_slug", :name => "language_project[slug]"
      assert_select "input#language_project_english_name", :name => "language_project[english_name]"
      assert_select "input#language_project_local_name", :name => "language_project[local_name]"
      assert_select "input#language_project_script", :name => "language_project[script]"
      assert_select "input#language_project_public", :name => "language_project[public]"
      assert_select "input#language_project_user", :name => "language_project[user]"
    end
  end
end
