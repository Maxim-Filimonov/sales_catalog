class RemoveProducts < ActiveRecord::Migration
  def change
    drop_table :products
    drop_table :groups_products
  end
end