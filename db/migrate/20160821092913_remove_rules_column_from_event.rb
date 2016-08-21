class RemoveRulesColumnFromEvent < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :rules, :text
  end
end
