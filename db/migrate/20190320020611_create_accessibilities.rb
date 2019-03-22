class CreateAccessibilities < ActiveRecord::Migration[5.2]
  def change
    create_table :accessibilities do |t|
      t.string :name, null: false
    end
  end
end
