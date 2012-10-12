class AddOilToOilVariations < ActiveRecord::Migration
  def change
    change_table :oil_variations do |t|
      t.belongs_to :oil
    end
  end
end
