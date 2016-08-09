class AddAvatarsToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :avatars, :json
  end
end
