# == Schema Information
#
# Table name: contacts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  company    :string(255)
#  email      :string(255)
#  phone      :string(255)
#  message    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Contact < ActiveRecord::Base

  # class attributes:
  attr_accessible :company, :email, :message, :name, :phone

  # constant variables:
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # data validations:
  validates         :name,  :company, :email, :phone, :message, :presence => true
  validates         :email, format: { with: VALID_EMAIL_REGEX }

end