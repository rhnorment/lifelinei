# == Schema Information
#
# Table name: aeds
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  image_url          :string(255)
#  battery_life       :string(255)
#  battery_type       :string(255)
#  energy_type        :string(255)
#  pad_type           :string(255)
#  pad_life           :string(255)
#  pediatric_pads     :string(255)
#  cpr_assistance     :string(255)
#  survival_chain     :string(255)
#  upgrade_technology :string(255)
#  self_test          :string(255)
#  training_unit      :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

class Aed < ActiveRecord::Base

  # class attributes:
  attr_accessible :battery_life, :battery_type, :image_url, :name, :energy_type, :pad_type, :pad_life, :pediatric_pads, :cpr_assistance,
                  :survival_chain, :upgrade_technology, :self_test, :training_unit

  # data validations:
  validates       :battery_life, :image_url, :name, :battery_type, :energy_type, :pad_type, :pediatric_pads, :cpr_assistance, :survival_chain,
                  :upgrade_technology, :self_test, :training_unit, :pad_life, presence: true

end
