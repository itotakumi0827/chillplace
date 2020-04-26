class AddTelToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :tel, :string
  end
end
