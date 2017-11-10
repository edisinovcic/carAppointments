class AddCarIdToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :car_id, :integer
    add_index :appointments, :car_id
  end
end
