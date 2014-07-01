class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :carType
      t.string :year
      t.string :generation
      t.string :model
      t.integer :brand_id
      t.timestamps
    end
  end
end
