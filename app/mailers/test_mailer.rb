class TestMailer < ApplicationMailer
  default from: 'edi.sinovcic@digacon-software.com'

  def welcome_email
    @url = 'http://localhost:3000/mailer'
    mail(to: 'edi.sinovcic@gmail.com', subject: 'Welcome!')
  end

end
