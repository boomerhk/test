class CreateStaffInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :staff_infos do |t|
      t.integer :staff_id
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
