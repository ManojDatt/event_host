class AddTwoColumnsToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :avatarable_id, :integer
    add_column :videos, :avatarable_type, :string
  end
end
