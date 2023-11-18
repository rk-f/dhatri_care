class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address_line1
      t.string :address_line2
      t.string :state
      t.string :city
      t.string :postal_code
      t.integer :age
      t.string :height
      t.string :weight
      t.string :parents_name
      t.timestamps
    end
  end
end
