class CreateMakerspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :makerspaces do |t|
      t.string :name, null: false
      t.string :street, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.string :zip_code, null: false
      t.string :website, null: false
      t.string :email, null: false
      t.string :mission

      t.timestamps null: false
    end
  end
end
