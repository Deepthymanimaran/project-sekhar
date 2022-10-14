class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.integer :doctor_id
      t.integer :users_id
      t.string :notes

      t.timestamps
    end
  end
end
