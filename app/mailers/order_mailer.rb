class OrderMailer < ApplicationMailer
  layout 'mailer'
  # OrderMailer.pay_info_email(Order.last).deliver_now
  def pay_info_email(order)
    @model = order
    mail(from: 'lapan40@yandex.ru', to: order.email, subject: 'Instructions')
  end
end
