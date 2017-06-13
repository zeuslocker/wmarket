module Product::Contract
  class ProductForm < ::Reform::Form
    model :product
    Product.attribute_names.each{|col| property col.to_sym}
    validates :title, presence: true
    validates :desc, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0}
    validates :category_id, presence: true
    property :avatar

     validates :avatar, file_size: { less_than: 10.megabytes },
       file_content_type: {allow: ['image/jpeg', 'image/png', 'image/gif']}

    collection :attachments, populator: :populate_attachments do
      ::Attachment.attribute_names.each{|col| property col.to_sym }
      property :value
      validates :value, file_size: { less_than: 10.megabytes },
      file_content_type: {allow: ['image/jpeg', 'image/png', 'image/gif']}
    end

    def populate_attachments(fragment:, **)
      item = fragment[:id] && attachments.find_by(id: fragment[:id])
      return skip! unless fragment[:value]
      item || attachments.append(Attachment.new)
    end

    def prepopulate!(options)
      (4 - attachments.length).times do
        attachments.append(Attachment.new)
      end
    end
  end
end
