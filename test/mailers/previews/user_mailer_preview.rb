# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def order_confirmation
    user = User.first
    order = Order.first
    UserMailer.with(user: user, order: order).order_confirmation
  end

end
