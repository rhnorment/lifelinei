class CreateAeds < ActiveRecord::Migration
  def change
    create_table :aeds do |t|
      t.string    :name
      t.string    :image_url
      t.string    :battery_life
      t.string    :battery_type
      t.string    :energy_type
      t.string    :pad_type
      t.string    :pad_life
      t.string    :pediatric_pads
      t.string    :cpr_assistance
      t.string    :survival_chain
      t.string    :upgrade_technology
      t.string    :self_test
      t.string    :training_unit
      t.timestamps
    end
  end
end
