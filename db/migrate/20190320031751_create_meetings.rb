class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name, null: false
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.string :street, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.string :zip_code, null: false

      t.belongs_to :makerspace
      t.belongs_to :maker, null: false

      t.timestamps null: false
    end
  end
end
