class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name, null: false
      t.date :date, null: false
      t.time :time, null: false

      t.belongs_to :makerspace, null: false
      t.belongs_to :maker

      t.timestamps null: false
    end
  end
end
