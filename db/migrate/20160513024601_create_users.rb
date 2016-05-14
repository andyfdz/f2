class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.integer :sector_id

      t.timestamps null: false
    end
    add_index :users, :sector_id
  end
end
