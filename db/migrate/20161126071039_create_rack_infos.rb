class CreateRackInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :rack_infos do |t|
      t.string :rack_no
      t.string :tpye
      t.string :customer_code
      t.integer :total_unit
      t.integer :low_unit
      t.integer :height_unit

      t.timestamps
    end
  end
end
