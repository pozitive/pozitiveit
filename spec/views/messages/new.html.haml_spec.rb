require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :company => "MyString",
      :idea => "MyString",
      :message => "MyText",
      :extra => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", messages_path, "post" do
      assert_select "input#message_name[name=?]", "message[name]"
      assert_select "input#message_phone[name=?]", "message[phone]"
      assert_select "input#message_email[name=?]", "message[email]"
      assert_select "input#message_company[name=?]", "message[company]"
      assert_select "input#message_idea[name=?]", "message[idea]"
      assert_select "textarea#message_message[name=?]", "message[message]"
      assert_select "input#message_extra[name=?]", "message[extra]"
      assert_select "input#message_type[name=?]", "message[type]"
    end
  end
end
