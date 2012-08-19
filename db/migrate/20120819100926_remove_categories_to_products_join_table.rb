class RemoveCategoriesToProductsJoinTable < ActiveRecord::Migration
  def up
    drop_table :categories_products
  end

  def down
    create_table :categories_products, id: false do |t|
      t.integer :category_id
      t.integer :product_id
    end
  end
end
