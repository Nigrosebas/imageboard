require 'spec_helper'

describe "topics/edit" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :first_post => 1,
      :title => "MyString",
      :count_post => 1,
      :category_id => 1
    ))
  end

  it "renders the edit topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => topics_path(@topic), :method => "post" do
      assert_select "input#topic_first_post", :name => "topic[first_post]"
      assert_select "input#topic_title", :name => "topic[title]"
      assert_select "input#topic_count_post", :name => "topic[count_post]"
      assert_select "input#topic_category_id", :name => "topic[category_id]"
    end
  end
end
