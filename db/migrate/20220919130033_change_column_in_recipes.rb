class ChangeColumnInRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :user_id, :chef_id
  end
end
