require 'spec_helper'

describe "admins/index" do
  before(:each) do
    assign(:admins, [
      stub_model(Admin,
        :user => "User",
        :password => "Password",
        :privilege => "Privilege"
      ),
      stub_model(Admin,
        :user => "User",
        :password => "Password",
        :privilege => "Privilege"
      )
    ])
  end

  it "renders a list of admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Privilege".to_s, :count => 2
  end
end
