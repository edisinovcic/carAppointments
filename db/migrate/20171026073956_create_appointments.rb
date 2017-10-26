class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments, :primary_key => :appointment_id  do |t|
      t.belongs_to :user
      t.belongs_to :car
      t.datetime :from
      t.datetime :to
      t.timestamps
    end
  end
end
