class Attachment < ApplicationRecord
 belongs_to :attachmentble, polymorphic: true
 has_attached_file :value, default_url: "/images/thumb/missing.png"
 validates_attachment_content_type :value, content_type: /\Aimage\/.*\z/
end
