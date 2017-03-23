class UserMailer < ApplicationMailer

  default from: 'zach.l.ward6@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Welcome to 99Cats!')
  end

end
