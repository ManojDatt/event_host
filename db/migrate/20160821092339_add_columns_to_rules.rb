class AddColumnsToRules < ActiveRecord::Migration[5.0]
  def change
    add_column :rules, :content, :text
    add_column :rules, :rule_for, :string
  end
end
