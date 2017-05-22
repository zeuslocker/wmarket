class OrderMailer < ApplicationMailer
  default from: "vova1997012@gmail.com"
  layout 'mailer'
  # OrderMailer.pay_info_email(Order.last).deliver_now
  def pay_info_email(order)
    @model = order
    mail(to: 'lapan40@ukr.net', subject: 'Instructions')
  end
end
