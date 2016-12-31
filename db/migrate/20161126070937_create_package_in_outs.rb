class CreatePackageInOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :package_in_outs do |t|
      t.integer :ticket_no
      t.string :customer_code
      t.integer :quantity
      t.string :package_no
      t.string :Courier
      t.integer :floor
      t.string :location
      t.datetime :package_in_time
      t.datetime :package_out_time

      t.timestamps
    end
  end
end
