class CreateCheckInOuts < ActiveRecord::Migration[5.0]
  def change
    create_table :check_in_outs do |t|
      t.integer :check_in_no
      t.string :customer_code
      t.integer :customer_staff_id
      t.string :status
      t.datetime :check_in_time
      t.datetime :check_out_time

      t.timestamps
    end
  end
end
