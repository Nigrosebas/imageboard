require 'spec_helper'

describe "admins/new" do
  before(:each) do
    assign(:admin, stub_model(Admin,
      :user => "MyString",
      :password => "MyString",
      :privilege => "MyString"
    ).as_new_record)
  end

  it "renders new admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admins_path, :method => "post" do
      assert_select "input#admin_user", :name => "admin[user]"
      assert_select "input#admin_password", :name => "admin[password]"
      assert_select "input#admin_privilege", :name => "admin[privilege]"
    end
  end
end
