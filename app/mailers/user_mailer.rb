class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def order_confirmation
    @user = params[:user]
    @order = params[:order]
    mail(to: @user.email, subject: 'confirmation de commande')
  end
end
