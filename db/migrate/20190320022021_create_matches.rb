class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :maker_id
      t.integer :match_id

      t.timestamps null: false
    end
  end
end
