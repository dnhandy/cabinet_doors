class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, index: true, foreign_key: true
      t.datetime :order_date
      t.string :species
      t.string :style
      t.text :notes

      t.timestamps null: false
    end
  end
end
