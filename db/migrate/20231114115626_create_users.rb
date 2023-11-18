class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address_line1
      t.string :address_line2
      t.string :state
      t.string :city
      t.string :postal_code
      t.timestamps
    end
  end
end
