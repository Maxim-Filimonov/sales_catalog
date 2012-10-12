class CreateOils < ActiveRecord::Migration
  def change
    create_table :oils do |t|
      t.string :name
      t.text :description
      t.belongs_to :brand
      t.string :groups

      t.timestamps
    end
  end
end
