require 'spec_helper'

describe "messages/index" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :company => "Company",
        :idea => "Idea",
        :message => "MyText",
        :extra => "Extra",
        :type => "Type"
      ),
      stub_model(Message,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :company => "Company",
        :idea => "Idea",
        :message => "MyText",
        :extra => "Extra",
        :type => "Type"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Idea".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Extra".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
