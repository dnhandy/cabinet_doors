class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :organization
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.text :notes

      t.timestamps null: false
    end
  end
end
