# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/pay_info_email
  def pay_info_email
    OrderMailer.pay_info_email
  end

end
