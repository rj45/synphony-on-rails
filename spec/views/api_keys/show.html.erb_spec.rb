require 'spec_helper'

describe "api_keys/show" do
  before(:each) do
    @api_key = assign(:api_key, stub_model(ApiKey,
      :user => nil,
      :auth_token => "Auth Token",
      :application => "Application",
      :version => "Version"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Auth Token/)
    rendered.should match(/Application/)
    rendered.should match(/Version/)
  end
end
