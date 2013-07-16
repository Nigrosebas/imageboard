require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :password => "MyString",
      :content => "MyText",
      :img => "MyString",
      :topic_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_password", :name => "post[password]"
      assert_select "textarea#post_content", :name => "post[content]"
      assert_select "input#post_img", :name => "post[img]"
      assert_select "input#post_topic_id", :name => "post[topic_id]"
    end
  end
end
