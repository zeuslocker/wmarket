class OrderMailer < ApplicationMailer
  layout 'mailer'
  # OrderMailer.pay_info_email(Order.last).deliver_now
  def pay_info_email(order)
    @model = order
    mail(to: order.email, subject: 'Instructions')
  end
end
