class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :titile
      t.text :description
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end
