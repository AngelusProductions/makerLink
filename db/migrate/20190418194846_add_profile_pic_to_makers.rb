class AddProfilePicToMakers < ActiveRecord::Migration[5.2]
  def change
    add_column :makers, :profile_pic, :string
  end
end
