module Order::Contract
  class OrderForm < ::Reform::Form
    ::Order.attribute_names.each{|col| property col.to_sym}

    validates :product_id, presence: true
    validates :amount, presence: true, numericality:  {greater_than_or_equal_to: 1,
                                                       less_than_or_equal_to: 10}
    validates :total_price, :region, presence: true, numericality: true
    validates :email , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  end
end
