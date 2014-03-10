class MessageMailer < ActionMailer::Base
  default from: 'coddeys@gmail.com', reply_to: 'coddeys@gmail.com'

  def contact_form(message)
    @message = message
    mail(to: 'coddeys@gmail.com', subject: 'Request from Pozitive contact form!')
  end
end
