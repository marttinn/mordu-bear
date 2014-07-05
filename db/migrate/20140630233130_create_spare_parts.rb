class CreateSpareParts < ActiveRecord::Migration
  def change
    create_table :spare_parts do |t|
      t.string :name
      t.text :description
      t.string :carRegion
      t.integer :parent_id

      t.timestamps
    end
  end
end
