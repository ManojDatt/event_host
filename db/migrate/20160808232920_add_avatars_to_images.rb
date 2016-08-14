class AddAvatarsToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :avatars, :string, array: true, default: []
  end
end
