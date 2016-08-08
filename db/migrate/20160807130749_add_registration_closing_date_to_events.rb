class AddRegistrationClosingDateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :registration_closing_date, :date
  end
end
