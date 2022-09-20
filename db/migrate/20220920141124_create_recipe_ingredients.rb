class CreateRecipeIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_ingredients do |t|
      t.integer :recipe_ingredients
      t.integer :ingredient_id

      
    end
  end
end
