class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name, null: false
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.string :street
      t.string :city
      t.string :country
      t.string :zip_code

      t.belongs_to :makerspace
      t.belongs_to :maker, null: false

      t.timestamps null: false
    end
  end
end
