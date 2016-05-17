class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.references :user
    	t.string :name
    	t.text :description
    	t.references :category
    	t.string :photo
      t.timestamps null: false
    end
  end
end
