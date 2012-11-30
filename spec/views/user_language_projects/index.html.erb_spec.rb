require 'spec_helper'

describe "user_language_projects/index" do
  before(:each) do
    assign(:user_language_projects, [
      stub_model(UserLanguageProject,
        :user => nil,
        :language_project => nil
      ),
      stub_model(UserLanguageProject,
        :user => nil,
        :language_project => nil
      )
    ])
  end

  it "renders a list of user_language_projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
