require 'spec_helper'

describe "user_language_projects/edit" do
  before(:each) do
    @user_language_project = assign(:user_language_project, stub_model(UserLanguageProject,
      :user => nil,
      :language_project => nil
    ))
  end

  it "renders the edit user_language_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_language_projects_path(@user_language_project), :method => "post" do
      assert_select "input#user_language_project_user", :name => "user_language_project[user]"
      assert_select "input#user_language_project_language_project", :name => "user_language_project[language_project]"
    end
  end
end
