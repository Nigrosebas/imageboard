require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :password => "Password",
      :content => "MyText",
      :img => "Img",
      :topic_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Password/)
    rendered.should match(/MyText/)
    rendered.should match(/Img/)
    rendered.should match(/1/)
  end
end
