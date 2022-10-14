class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
     t.integer :doctor_id
     t.integer :user_id
     t.time  :time
     t.string :complaints

      t.timestamps
    end
  end
end
