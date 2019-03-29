class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.belongs_to :project, null: false
      t.belongs_to :administrator, null: false

      t.timestamps null: false
    end
  end
end
