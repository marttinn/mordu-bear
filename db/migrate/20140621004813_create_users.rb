class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :password_digest
      t.integer :permissions

      t.timestamps
    end
  end
end
