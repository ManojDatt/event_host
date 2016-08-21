class ChangeColumnFormatInPosts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :posts, :content, :string
  	add_column :posts, :content, :text
  end
end
