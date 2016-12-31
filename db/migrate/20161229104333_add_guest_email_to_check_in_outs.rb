class AddGuestEmailToCheckInOuts < ActiveRecord::Migration[5.0]
  def change
    add_column :check_in_outs, :guest_email, :string
  end
end
