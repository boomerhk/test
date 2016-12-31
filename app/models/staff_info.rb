class StaffInfo < ApplicationRecord
  validates_presence_of :staff_id
  validates_presence_of :staff_first_name
  validates_presence_of :staff_last_name
  validates_presence_of :staff_email
  validates_presence_of :department
  validates_presence_of :staff_post
  validates_length_of :staff_id, :is =>6
  validates_numericality_of :staff_id, :only_integer => true
  validates_format_of :staff_email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  validates_uniqueness_of :staff_id
  validates_uniqueness_of :staff_email

  self.primary_key = :staff_id
  has_many :Ticket, :class_name => Ticket, :foreign_key => :staff_id
end
