class CreatePaymentPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_plans do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.integer :amount, null: false
      t.string :frequency, null: false

      t.belongs_to :makerspace, null: false

      t.timestamps null: false
    end
  end
end
