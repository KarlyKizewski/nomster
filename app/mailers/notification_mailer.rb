class NotificationMailer < ApplicationMailer
  default form: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "kizewski.karly@gmail.com",
          subject: "A comment as been added to your place")
  end
end
