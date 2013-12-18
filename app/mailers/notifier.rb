class Notifier < ActionMailer::Base
  default from: "genetestemail@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
  def subscription_confirmation(user, project)
    @user = user
    @project = project

    mail( to: "#{user.name} <#{user.email}>", subject: "Subscribed to #{project.name.capitalize} | Ativa")
  end

  # def update_confirmation(user, project)
  #   @user = user
  #   @project = project

  #   mail( to: "#{user.name} <#{user.email}>", subject: "Subscribed to #{project.name.capitalize} | Ativa")
  # end


  def unsub_confirmation(user, project)
    @user = user
    @project = project

    mail( to: "#{user.name} <#{user.email}>", subject: "Unsubscribed from #{project.name.capitalize} | Ativa")
  end

end
