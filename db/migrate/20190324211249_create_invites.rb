class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.string :message, null: false, limit: 1000
      t.boolean :accepted, null: false, default: false

      t.belongs_to :chat, null: false
      t.belongs_to :inviter, null: false
      t.belongs_to :invitee, null: false

      t.timestamps null: false
    end
  end
end
