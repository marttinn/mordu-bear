class CreateWorkshopCars < ActiveRecord::Migration
  def change
    create_table :workshop_cars do |t|
      t.string :color
      t.integer :doorNumber
      t.string :status
      t.string :idSerie
      t.string :idMotor
      t.string :licensePlates
      t.integer :car_id
      
      t.timestamps
    end
  end
end
