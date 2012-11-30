require 'spec_helper'

describe "language_projects/index" do
  before(:each) do
    assign(:language_projects, [
      stub_model(LanguageProject,
        :slug => "Slug",
        :english_name => "English Name",
        :local_name => "Local Name",
        :script => "Script",
        :public => false,
        :user => nil
      ),
      stub_model(LanguageProject,
        :slug => "Slug",
        :english_name => "English Name",
        :local_name => "Local Name",
        :script => "Script",
        :public => false,
        :user => nil
      )
    ])
  end

  it "renders a list of language_projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "English Name".to_s, :count => 2
    assert_select "tr>td", :text => "Local Name".to_s, :count => 2
    assert_select "tr>td", :text => "Script".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
