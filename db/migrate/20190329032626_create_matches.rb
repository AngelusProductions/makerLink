class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :maker_id, null: false
      t.integer :match_id, null: false

      t.timestamps null: false
    end
  end
end
