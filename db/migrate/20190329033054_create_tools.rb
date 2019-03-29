class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name, null: false
      t.integer :danger, null: false
      t.string :city, null: false
      t.string :description

      t.belongs_to :maker, null: false

      t.timestamps null: false
    end
  end
end
