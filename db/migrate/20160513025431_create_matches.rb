class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :object_one_id
      t.integer :object_two_id

      t.timestamps null: false
    end
    add_index :matches, :object_one_id
    add_index :matches, :object_two_id
  end
end
