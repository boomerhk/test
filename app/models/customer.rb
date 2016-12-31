class Customer < ApplicationRecord
  validates_presence_of :customer_code
  validates_presence_of :customer_name
  validates_presence_of :email
  validates_presence_of :phone_no
  validates_presence_of :address
  validates_presence_of :join_date
  validates_length_of :customer_code, :is =>5
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  validates_uniqueness_of :customer_code
  validates_uniqueness_of :customer_name

  self.primary_key = :customer_code
  has_many :Customer_Staff, :class_name => CustomerStaff, :foreign_key => :customer_code
  has_many :Ticket, :class_name => Ticket, :foreign_key => :customer_code
end
