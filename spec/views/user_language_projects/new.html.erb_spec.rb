require 'spec_helper'

describe "user_language_projects/new" do
  before(:each) do
    assign(:user_language_project, stub_model(UserLanguageProject,
      :user => nil,
      :language_project => nil
    ).as_new_record)
  end

  it "renders new user_language_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_language_projects_path, :method => "post" do
      assert_select "input#user_language_project_user", :name => "user_language_project[user]"
      assert_select "input#user_language_project_language_project", :name => "user_language_project[language_project]"
    end
  end
end
