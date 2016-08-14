class AddTwoColumnsToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :avatarable_id, :integer
    add_column :images, :avatarable_type, :string
  end
end
