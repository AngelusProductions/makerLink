class CreateLeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :leaders do |t|
      t.belongs_to :maker, null: false
      t.belongs_to :project, null: false

      t.timestamps null: false
    end
  end
end
