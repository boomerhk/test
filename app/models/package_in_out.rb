class PackageInOut < ApplicationRecord
  validates_presence_of :ticket_no
  validates_presence_of :customer_code
  validates_presence_of :quantity
  validates_length_of :ticket_no, :is =>6
  validates_length_of :customer_code, :is =>5
  validates_numericality_of :ticket_no, :only_integer => true
  validates_numericality_of :quantity, :only_integer => true
  validates_uniqueness_of :ticket_no

  self.primary_key = :ticket_no
  belongs_to :Ticket, :class_name => Ticket, :foreign_key => :ticket_no
end
