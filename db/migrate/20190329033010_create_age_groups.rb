class CreateAgeGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :age_groups do |t|
      t.string :name, null: false
      t.integer :minimum_age, null: false
      t.integer :maximum_age, null: false

      t.timestamps null: false
    end
  end
end
