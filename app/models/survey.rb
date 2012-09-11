# == Schema Information
#
# Table name: surveys
#
#  id                   :integer         not null, primary key
#  survey_code          :string(255)
#  business_name        :string(255)
#  knowledge_rating     :integer
#  knowledge_comment    :text
#  availability_rating  :integer
#  availability_comment :text
#  instructor_rating    :integer
#  instructor_comment   :text
#  conditions_rating    :integer
#  conditions_comment   :text
#  opinion_rating       :integer
#  opinion_comment      :text
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#

class Survey < ActiveRecord::Base

  # class attriibutes:
  attr_accessible        :survey_code, :business_name, :knowledge_comment, :knowledge_rating, :availability_rating, :availability_comment, :instructure_rating,
                         :instructor_comment, :conditions_rating, :condition_comment, :opinion_rating, :opinion_commentannotae

end
