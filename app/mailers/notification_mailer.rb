class NotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification_mailer.new_account.subject
  #
  def new_account(user)
    @greeting = "Hi"
    @user = user
   # attachments['rails.jpg']=File.read("#{Rails.root}/app/assets/images/rails.jpg")
  #  headers["X-Prioroty"] = '3'
    mail(to: user.email,subject: "The Account {#user.name} is active")

    # attachments.inline['rails.jpg']=File.read("#{Rails.root}/app/assets/images/rails.jpg")
  end

  =begin
  multiple recipients
  default to: ->{Admin.pluck(:email)},
  from: 'noreply@example.com'
  def new_account(user)
    @greeting = "Hi"
    @user = user
    mail(subject: "New user login: #{@user.name}")
  
  #email with name
  
  def welcome(user)
    @user = user
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name, subject: 'welcome tomy webshop',
    template_path: 'notification',
    template_name: 'another')
  end 
end
  
    =end

end
