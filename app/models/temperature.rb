class Temperature < ApplicationRecord
  validates_presence_of :date
  validates_presence_of :time
  validates_presence_of :datetime
  validates_presence_of :temperature
  validates_presence_of :rack_no
  validates_presence_of :min_temp
  validates_presence_of :max_temp
  validates_presence_of :low_warnlv
  validates_presence_of :high_warnlv
  validates_presence_of :timestamp
  validates_numericality_of :temperature
  validates_numericality_of :min_temp
  validates_numericality_of :max_temp
  validates_numericality_of :low_warnlv
  validates_numericality_of :high_warnlv

  belongs_to :Rack_info, :class_name => RackInfo, :foreign_key => :rack_no
end
