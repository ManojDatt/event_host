class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :avatar
      
      t.timestamps
    end
  end
end
