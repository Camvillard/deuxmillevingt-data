class UserMailer < ApplicationMailer
  def order_confirmation
    @user = params[:user]
    @order = params[:order]
    mail(to: @user.email, subject: 'confirmation de commande')
  end
end
