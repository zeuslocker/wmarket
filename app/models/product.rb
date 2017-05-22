class Product < ApplicationRecord
  def porthion_type
     return I18n.t('product.for_gram') if p_type == 0
     return I18n.t('product.for_item') if p_type == 1
  end

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
