class Product < ApplicationRecord
  belongs_to :category
  has_many :attachments, as: :attachmentable, dependent: :destroy
  accepts_nested_attributes_for(:attachments)
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
