class AddRulesToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :rules, :text , array: true , default: []
  end
end
