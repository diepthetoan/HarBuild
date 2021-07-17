class RequestMailer < ApplicationMailer
  default from: 'harbuild@gmail.com'

  def quote_email
    @request = params[:request]
    @to = 'diepthetoan97@gmail.com'
    mail(to: @to, subject: "The new request's just been sent!")
  end
end