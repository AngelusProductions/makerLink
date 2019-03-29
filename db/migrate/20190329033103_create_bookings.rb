class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_time, null: false
      t.datetime :end_date, null: false

      t.belongs_to :tool, null: false
      t.belongs_to :maker, null: false

      t.timestamps null: false
    end
  end
end
