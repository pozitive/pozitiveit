require 'spec_helper'

describe "blogs/new" do
  before(:each) do
    assign(:blog, stub_model(Blog,
      :name => "MyString",
      :permalink => "MyString",
      :image => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new blog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", blogs_path, "post" do
      assert_select "input#blog_name[name=?]", "blog[name]"
      assert_select "input#blog_permalink[name=?]", "blog[permalink]"
      assert_select "input#blog_image[name=?]", "blog[image]"
      assert_select "textarea#blog_content[name=?]", "blog[content]"
    end
  end
end
