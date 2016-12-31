class CreateCustomerStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_staffs do |t|
      t.string :customer_code
      t.integer :customer_staff_id
      t.string :staff_first_name
      t.string :staff_last_name
      t.string :staff_email
      t.string :staff_phone
      t.string :department
      t.string :staff_post

      t.timestamps
    end
  end
end
