class ComplaintMailer < ApplicationMailer
  default from: 'notifications@example.com'
  def send_email
    byebug
    @compalint = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @compalint.mechenic, subject: 'Welcome to My Awesome Site')
  end
end
