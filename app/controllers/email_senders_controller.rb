class EmailSendersController < ApplicationController
  def index
    TestMailer.welcome_email.deliver_now
  end
end
