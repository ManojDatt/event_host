class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :f_name
      t.date :dob
      t.string :phone
      t.string :role
      t.string :image
      t.text :address
      t.string :email

      t.timestamps
    end
  end
end
