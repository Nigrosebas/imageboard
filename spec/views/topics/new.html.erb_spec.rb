require 'spec_helper'

describe "topics/new" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :first_post => 1,
      :title => "MyString",
      :count_post => 1,
      :category_id => 1
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path, :method => "post" do
      assert_select "input#topic_first_post", :name => "topic[first_post]"
      assert_select "input#topic_title", :name => "topic[title]"
      assert_select "input#topic_count_post", :name => "topic[count_post]"
      assert_select "input#topic_category_id", :name => "topic[category_id]"
    end
  end
end
