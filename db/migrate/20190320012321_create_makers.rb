class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
      t.string :username, null: false
      t.string :first_name, null: false
      t.string :last_name
      t.string :gender
      t.integer :age, null: false
      t.string :email, null: false
      t.string :phone_number
      t.string :bio
      t.string :city

      t.timestamps null: false
    end
  end
end
