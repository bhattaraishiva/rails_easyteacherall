class UserMailer < ApplicationMailer
  default from: 'bhattaraishiva17@sendgrid.com'

  def welcome_email(user)
    @user = user
    @url =  'http://easyteacher.com/login'
    mail(to: @user.email, subject: 'Welcome to the easyteacher.com')
  end
end
