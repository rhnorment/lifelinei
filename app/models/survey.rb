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
#  confidence_rating    :integer
#  confidence_comment   :text
#  conditions_rating    :integer
#  conditions_comment   :text
#  opinion_rating       :integer
#  opinion_comment      :text
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#

class Survey < ActiveRecord::Base

    # constant variables:
    RATING = (1..10)

    # class attributes:
    attr_accessible        :survey_code, :business_name, :knowledge_comment, :knowledge_rating, :availability_rating, :availability_comment, :instructor_rating,
                           :instructor_comment, :conditions_rating, :conditions_comment, :opinion_rating, :opinion_comment, :confidence_rating, :confidence_comment

    # data validations:
    validates              :survey_code, :business_name, :knowledge_rating, :availability_rating, :instructor_rating, :conditions_rating, :opinion_rating,
                           :confidence_rating, presence: true


end

