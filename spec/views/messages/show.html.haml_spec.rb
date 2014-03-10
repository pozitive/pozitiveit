require 'spec_helper'

describe "messages/show" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :name => "Name",
      :phone => "Phone",
      :email => "Email",
      :company => "Company",
      :idea => "Idea",
      :message => "MyText",
      :extra => "Extra",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Company/)
    rendered.should match(/Idea/)
    rendered.should match(/MyText/)
    rendered.should match(/Extra/)
    rendered.should match(/Type/)
  end
end
