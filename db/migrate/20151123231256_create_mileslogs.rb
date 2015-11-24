class CreateMileslogs < ActiveRecord::Migration
  def change
    create_table :mileslogs do |t|
      t.integer :odometer
      t.boolean :gas
      t.boolean :oil
      t.float :gallons_filled

      t.timestamps null: false
    end
  end
end
