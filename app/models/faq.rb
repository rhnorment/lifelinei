# == Schema Information
#
# Table name: faqs
#
#  id         :integer         not null, primary key
#  number     :integer
#  question   :string(255)
#  answer     :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Faq < ActiveRecord::Base

  # class attributes:
  attr_accessible           :answer, :number, :question

  # data validations:
  validates                 :answer, :number, :question, presence: true
  validates_uniqueness_of   :number

end
