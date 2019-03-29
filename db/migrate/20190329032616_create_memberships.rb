class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.belongs_to :maker, null: false
      t.belongs_to :makerspace, null: false
      t.belongs_to :payment_plan, null: false

      t.timestamps null: false
    end
  end
end
