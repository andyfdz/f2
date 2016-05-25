class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :photo
      t.references :category, index: true, foreign_key: true
      t.text :characteristics

      t.timestamps null: false
    end
  end
end
