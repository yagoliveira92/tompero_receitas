class CreateRecipeIngredients < ActiveRecord::Migration[8.0]
  def down
    table_exists?(:recipe_ingredients) ? drop_table(:recipe_ingredients) : nil
  end
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
