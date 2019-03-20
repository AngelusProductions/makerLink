class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
