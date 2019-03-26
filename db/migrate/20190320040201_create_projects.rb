class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :street
      t.string :city, null: false
      t.string :country
      t.string :zip_code, null: false
      t.string :website

      t.belongs_to :administrator

      t.timestamps null: false
    end
  end
end
