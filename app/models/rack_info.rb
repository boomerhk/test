class RackInfo < ApplicationRecord
  validates_presence_of :rack_no
  validates_presence_of :tpye
  validates_presence_of :customer_code
  validates_presence_of :total_unit
  validates_presence_of :low_unit
  validates_presence_of :height_unit
  validates_length_of :customer_code, :is =>5
  validates_numericality_of :total_unit, :only_integer => true
  validates_numericality_of :low_unit, :only_integer => true
  validates_numericality_of :height_unit, :only_integer => true

  belongs_to :Customer, :class_name => Customer, :foreign_key => :customer_code
  has_many :Temperature, :foreign_key => :rack_no
end
