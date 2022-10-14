class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :building_name
      t.string :street
      t.string :city
      t.integer :zipcode

      t.timestamps
    end
  end
end
