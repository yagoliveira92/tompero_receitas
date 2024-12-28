class CreateIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :quantity
      t.string :unit

      t.timestamps
    end
  end
end
