class CreateSpareParts < ActiveRecord::Migration
  def change
    create_table :spare_parts do |t|
      t.string :brand
      t.string :car
      t.string :generation
      t.string :region
      t.string :year
      t.string :name
      t.string :kind

      t.timestamps
    end
  end
end
