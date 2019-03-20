class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :body, null: false

      t.belongs_to :feed, null: false

      t.timestamps null: false
    end
  end
end
