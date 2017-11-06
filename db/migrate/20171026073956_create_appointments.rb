class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments, :primary_key => :appointment_id  do |t|
      #t.belongs_to :user, :null => false
      #t.belongs_to :car, :null => false
      t.datetime :from, :null => false
      t.datetime :to, :null => false
      t.timestamps
    end
  end
end
