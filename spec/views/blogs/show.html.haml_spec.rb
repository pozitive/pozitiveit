require 'spec_helper'

describe "blogs/show" do
  before(:each) do
    @blog = assign(:blog, stub_model(Blog,
      :name => "Name",
      :permalink => "Permalink",
      :image => "Image",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Permalink/)
    rendered.should match(/Image/)
    rendered.should match(/MyText/)
  end
end
