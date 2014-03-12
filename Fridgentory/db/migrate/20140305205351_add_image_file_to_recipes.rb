class AddImageFileToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :image_file, :string
  end
end
