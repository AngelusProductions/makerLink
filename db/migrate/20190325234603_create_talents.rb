class CreateTalents < ActiveRecord::Migration[5.2]
  def change
    create_table :talents do |t|
      t.string :name, null: false
      t.integer :level, default: 1

      t.belongs_to :maker, null: false
      t.belongs_to :skill, null: false

      t.timestamps null: false 
    end
  end
end
