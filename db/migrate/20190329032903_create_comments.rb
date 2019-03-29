class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :body, null: false

      t.belongs_to :post, null: false
      t.belongs_to :maker, null: false

      t.timestamps null: false
    end
  end
end
