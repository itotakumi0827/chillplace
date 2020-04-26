class AddColumnToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :chill, :integer
    add_column :comments, :costper, :integer
    add_column :comments, :beautiful, :integer
  end
end
