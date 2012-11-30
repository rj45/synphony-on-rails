require 'spec_helper'

describe "user_language_projects/show" do
  before(:each) do
    @user_language_project = assign(:user_language_project, stub_model(UserLanguageProject,
      :user => nil,
      :language_project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
