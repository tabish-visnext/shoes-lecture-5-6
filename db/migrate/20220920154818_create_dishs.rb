class CreateDishs < ActiveRecord::Migration[7.0]
  def change
    create_table :dishs do |t|
      t.string :name
      t.text :description
      t.integer :chef_id

      
    end
  end
end
