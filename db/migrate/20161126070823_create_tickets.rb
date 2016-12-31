class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :ticket_no
      t.string :services
      t.string :customer_code
      t.date :build_date
      t.integer :staff_id

      t.timestamps
    end
  end
end
