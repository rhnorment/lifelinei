class Faq < ActiveRecord::Base

  # class attributes:
  attr_accessible :answer, :number, :question

  # data validations:
  validates       :answer, :number, :question, presence: true
  validates_uniqueness_of           :number

end
