class CreateBranches < ActiveRecord::Migration[6.1]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :email
      t.string :contact_number
      t.string :address_line1
      t.string :address_line2
      t.string :state
      t.string :city
      t.string :postal_code
      t.references :organization
      t.timestamps
    end
  end
end
