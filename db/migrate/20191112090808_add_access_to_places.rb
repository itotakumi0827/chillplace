class AddAccessToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :access, :string
  end
end
