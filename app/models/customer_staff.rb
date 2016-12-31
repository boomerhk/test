class CustomerStaff < ApplicationRecord
  validates_presence_of :customer_code
  validates_presence_of :customer_staff_id
  validates_numericality_of :customer_staff_id, :only_integer => true
  validates_presence_of :staff_first_name
  validates_presence_of :staff_last_name
  validates_presence_of :staff_email
  validates_presence_of :department
  validates_presence_of :staff_post
  validates_length_of :customer_code, :is =>5
  validates_format_of :staff_email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  self.primary_key = :customer_staff_id
  belongs_to :Customer, :class_name => Customer, :foreign_key => :customer_code
  has_many :Check_In_Out, :class_name => CheckInOut, :foreign_key => :customer_code

end
