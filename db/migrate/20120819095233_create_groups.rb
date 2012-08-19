class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.belongs_to :category

      t.timestamps
    end
    add_index :groups, :category_id
  end
end
