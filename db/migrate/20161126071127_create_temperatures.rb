class CreateTemperatures < ActiveRecord::Migration[5.0]
  def change
    create_table :temperatures do |t|
      t.date :date
      t.time :time
      t.datetime :datetime
      t.integer :temperature
      t.string :rack_no
      t.integer :min_temp
      t.integer :max_temp
      t.integer :low_warnlv
      t.integer :high_warnlv
      t.timestamp :timestamp

      t.timestamps
    end
  end
end
