class AddOverviewToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :overview, :text
  end
end
