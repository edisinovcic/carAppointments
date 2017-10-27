class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars, :primary_key => :car_id  do |t|
      t.string :car_name, :null => false
      t.string :car_type, :null => false
      t.string :registration_number, :null => false
      t.timestamps
    end

    add_index :cars, [:car_name, :registration_number], unique: true
  end
end
