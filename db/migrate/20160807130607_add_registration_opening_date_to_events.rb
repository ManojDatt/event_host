class AddRegistrationOpeningDateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :registration_opening_date, :date
  end
end
