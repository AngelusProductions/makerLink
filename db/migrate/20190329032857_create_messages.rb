class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :body, null: false
      t.boolean :direct, null: false

      t.belongs_to :sender, null: false
      t.belongs_to :recipient, default: nil
      t.belongs_to :chat, default: nil

      t.timestamps null: false
    end
  end
end
