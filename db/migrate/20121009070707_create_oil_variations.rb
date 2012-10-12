class CreateOilVariations < ActiveRecord::Migration
  def change
    create_table :oil_variations do |t|
      t.decimal :price
      t.float :volume

      t.timestamps
    end
  end
end
