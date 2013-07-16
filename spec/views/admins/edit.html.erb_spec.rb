require 'spec_helper'

describe "admins/edit" do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin,
      :user => "MyString",
      :password => "MyString",
      :privilege => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admins_path(@admin), :method => "post" do
      assert_select "input#admin_user", :name => "admin[user]"
      assert_select "input#admin_password", :name => "admin[password]"
      assert_select "input#admin_privilege", :name => "admin[privilege]"
    end
  end
end
