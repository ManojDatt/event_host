class ChangeColumnFormatInImages < ActiveRecord::Migration[5.0]
  def change
  	remove_column :images, :avatars, :string
  	add_column :images, :avatar, :string

  end
end
