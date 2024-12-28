class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.integer :prep_time
      t.string :difficulty
      t.string :category

      t.timestamps
    end
  end
end
