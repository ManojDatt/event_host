class AddEventToRules < ActiveRecord::Migration[5.0]
  def change
    add_reference :rules, :event, foreign_key: true
  end
end
