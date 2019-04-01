class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name, limit: 100
      t.string :body, null: false
      t.string :link

      t.belongs_to :maker, null: false

      t.timestamps null: false
    end
  end
end
