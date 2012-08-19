class AddGroupsToProductsJoinTable < ActiveRecord::Migration
  def change
    create_table :groups_products, id: false do |t|
      t.integer :group_id
      t.integer :product_id
    end
  end
end
