class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars, :primary_key => :car_id  do |t|
      t.string :car_name, presence => true
      t.string :car_type, presence => true
      t.timestamps
    end
  end
end
