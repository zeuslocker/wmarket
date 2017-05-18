module Product::Contract
  class ProductForm < ::Reform::Form
    Product.attribute_names.each{|col| property col.to_sym}
    validates :title, presence: true
    validates :desc, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0}

    property :avatar

     validates :avatar, file_size: {less_than: 10.megabytes},
       file_content_type: {allow: ['image/jpeg', 'image/png', 'image/gif']}
  end
end
