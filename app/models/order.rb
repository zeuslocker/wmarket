class Order < ApplicationRecord
  delegate :avatar, :title, :price, to: :product
  belongs_to :product

  after_create :send_order_mail

  def send_order_mail
    ::OrderMailer.pay_info_email(self).deliver_now
  end
end
