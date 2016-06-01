class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :sector_id, :integer
    add_column :users, :photo, :string
  end
end
