class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :ev_name
      t.string :image

      t.timestamps
    end
  end
end
