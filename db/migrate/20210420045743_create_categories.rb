class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :private
      t.integer :category_id

      t.timestamps
    end
  end
end
