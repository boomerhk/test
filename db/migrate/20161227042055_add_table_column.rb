class AddTableColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :check_in_outs, :check_in_date, :date
    add_column :check_in_outs, :check_out_date, :date
    add_column :check_in_outs, :guest_name, :string
    add_column :check_in_outs, :guest_no, :string
    remove_column :check_in_outs, :customer_staff_id, :integer
  end
end
