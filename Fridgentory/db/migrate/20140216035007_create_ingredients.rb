class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :serving_unit
      t.float :serving_quantity
      t.integer :recipe_id
      t.integer :item_id

      t.timestamps
    end
  end
end
