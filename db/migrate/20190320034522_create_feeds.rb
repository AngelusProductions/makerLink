class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.belongs_to :maker, null: false
    end
  end
end
