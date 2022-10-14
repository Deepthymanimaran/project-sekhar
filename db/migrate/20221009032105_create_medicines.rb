class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :brand
      t.integer :quantity
      t.float :price
      t.date :expiry
      
      t.timestamps
    end
  end
end
