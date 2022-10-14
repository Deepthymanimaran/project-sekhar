class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :specialist
      t.string :qualification

      t.timestamps
    end
  end
end
