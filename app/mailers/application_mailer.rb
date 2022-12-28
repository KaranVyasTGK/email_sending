class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  def send_email(email)
    puts "===========inside email sending======="
    @email = email
    mail(to: "karan@mail.com", subject: @email.title)
  end
end
