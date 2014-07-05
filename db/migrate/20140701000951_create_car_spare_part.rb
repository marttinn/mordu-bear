class CreateCarSparePart < ActiveRecord::Migration
  def change
    create_table :cars_spare_parts, :id => false do |t|
      t.integer :id_car
      t.integer :id_spare_part
    end
  end


end
