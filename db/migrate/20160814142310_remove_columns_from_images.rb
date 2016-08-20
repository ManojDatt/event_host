class RemoveColumnsFromImages < ActiveRecord::Migration[5.0]
  def change
  	    remove_column :images, :avatarable_id, :integer
    remove_column :images, :avatarable_type, :string
  end
end
