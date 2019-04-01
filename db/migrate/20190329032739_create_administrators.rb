class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.belongs_to :maker, null: false
      t.belongs_to :makerspace, null: false

      t.timestamps null: false
    end
  end
end
