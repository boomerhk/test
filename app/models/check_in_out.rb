class CheckInOut < ApplicationRecord
  validates_presence_of :check_in_no
  validates_numericality_of :check_in_no, :only_integer => true
  validates_presence_of :customer_code
  validates_presence_of :status
  validates_length_of :check_in_no, :is =>6
  validates_length_of :customer_code, :is =>5
  validates_inclusion_of :status, :in => ["Inactive","In", "Out"]
  validates_uniqueness_of :check_in_no

  self.primary_key = :check_in_no
  belongs_to :Customer_Staff, :class_name => CustomerStaff, :foreign_key => :customer_code
end
