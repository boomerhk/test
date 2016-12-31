class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_code
      t.string :customer_name
      t.string :email
      t.string :phone_no
      t.string :address
      t.date :join_date

      t.timestamps
    end
  end
end
