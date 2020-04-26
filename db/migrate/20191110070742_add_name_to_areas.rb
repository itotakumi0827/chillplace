class AddNameToAreas < ActiveRecord::Migration[5.1]
  def change
    add_column :areas, :name, :string
  end
end
