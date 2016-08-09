class RemoveColumnFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :avatar, :string
  end
end
