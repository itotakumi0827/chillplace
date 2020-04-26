class AddHolidayToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :holiday, :string
  end
end
