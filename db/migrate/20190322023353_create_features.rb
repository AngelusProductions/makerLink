class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :name, null: false
      
      t.belongs_to :maker
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end
