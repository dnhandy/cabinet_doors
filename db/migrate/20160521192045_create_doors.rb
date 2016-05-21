class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.references :order, index: true, foreign_key: true
      t.decimal :height
      t.decimal :width
      t.decimal :style_width
      t.decimal :rail_width

      t.timestamps null: false
    end
  end
end
