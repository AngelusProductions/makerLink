class CreateWantedAds < ActiveRecord::Migration[5.2]
  def change
    create_table :wanted_ads do |t|
      t.string :description, null: false
      t.string :street, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.string :zip_code, null: false
      t.string :website

      t.belongs_to :maker
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end
