class AddCategoriesToOilsTable < ActiveRecord::Migration
  def change
    create_table :categories_oils, id: false do |t|
      t.integer :category_id
      t.integer :oil_id
    end
  end
end
