class CreateStockSpareParts < ActiveRecord::Migration
  def change
    create_table :stock_spare_parts do |t|
      t.string :status
      t.integer :workshop_car_id
      t.integer :spare_part_id

      t.timestamps
    end
  end
end
