require 'spec_helper'

describe "api_keys/new" do
  before(:each) do
    assign(:api_key, stub_model(ApiKey,
      :user => nil,
      :auth_token => "MyString",
      :application => "MyString",
      :version => "MyString"
    ).as_new_record)
  end

  it "renders new api_key form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => api_keys_path, :method => "post" do
      assert_select "input#api_key_user", :name => "api_key[user]"
      assert_select "input#api_key_auth_token", :name => "api_key[auth_token]"
      assert_select "input#api_key_application", :name => "api_key[application]"
      assert_select "input#api_key_version", :name => "api_key[version]"
    end
  end
end
