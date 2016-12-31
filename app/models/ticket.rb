class Ticket < ApplicationRecord
  validates_presence_of :ticket_no
  validates_presence_of :services
  validates_presence_of :customer_code
  validates_presence_of :build_date
  validates_numericality_of :ticket_no, :only_integer => true
  validates_presence_of :staff_id
  validates_numericality_of :staff_id, :only_integer => true
  validates_length_of :ticket_no, :is =>6
  validates_length_of :customer_code, :is =>5
  validates_format_of :build_date, :with => /\d{2}\/\d{2}\/\d{4}/
  validates_uniqueness_of :ticket_no

  self.primary_key = :ticket_no
  belongs_to :Customer, :class_name => Customer, :foreign_key => :customer_code
  belongs_to :Staff_Info, :class_name => StaffInfo, :foreign_key => :staff_id
  has_one :Package_In_Out, :class_name => PackageInOut, :foreign_key => :ticket_no
end
