class CreateBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :badges do |t|
      t.string :name, null: false
      t.string :description, null: false

      t.belongs_to :maker, null: false

      t.timestamps null: false
    end
  end
end
