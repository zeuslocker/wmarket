class Order < ApplicationRecord
  delegate :porthion_type, :title, :avatar, to: :product
  belongs_to :product

  def region_str
    I18n.t("region.x#{region}x");
  end

  after_create :send_order_mail

  def send_order_mail
    binding.pry
    ::OrderMailer.pay_info_email(self).deliver_now
  end
end
