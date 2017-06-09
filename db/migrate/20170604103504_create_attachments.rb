class CreateAttachments < ActiveRecord::Migration[5.1]
  def up
    create_table :attachments, id: :uuid do |t|
      t.string :attachmentble_type, null: false
      t.uuid :attachmentble_id, null: false
      t.attachment :value
      t.timestamps
    end
  end

  def down
    remove_attachment :attachments, :value
    drop_table :attachments
  end
end
