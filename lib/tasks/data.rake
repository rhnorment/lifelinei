namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_aeds
  end
end

def make_aeds
  Aed.delete_all
  Aed.create!(name:               "ZOLL AED Plus",
              image_url:          "ZOLL.png",
              battery_life:       "5",
              battery_type:       "Type 123 Duracell Lithium",
              energy_type:        "Biphasic, escalating Joules - 120, 150, 200",
              pad_type:           "Attached pad system designed to aid in CPR",
              pad_life:           "4",
              pediatric_pads:     "Available",
              cpr_assistance:     "Full CPR assistance and feedback",
              survival_chain:     "Yes",
              upgrade_technology: "Yes",
              self_test:          "Yes",
              training_unit:      "Yes"
  )
  Aed.create!(name:               "Phillps HeartStart",
              image_url:          "PHILIPS.png",
              battery_life:       "5",
              battery_type:       "Manufacturer",
              energy_type:        "Biphasic, fixed 150 Joules",
              pad_type:           "Two, separate pads",
              pad_life:           "2",
              pediatric_pads:     "Available",
              cpr_assistance:     "Partial",
              survival_chain:     "No",
              upgrade_technology:  "No",
              self_test:           "Yes",
              training_unit:       "Yes"
  )
  Aed.create!(name:               "Physio-Control LifePak CRPlus",
              image_url:          "PHYSIO.png",
              battery_life:       "5",
              battery_type:       "Manufacturer",
              energy_type:        "Biphasic, escalting Joules - 200, 360",
              pad_type:           "Two, separate pads",
              pad_life:           "2",
              pediatric_pads:     "Available",
              cpr_assistance:     "None",
              survival_chain:     "No",
              upgrade_technology: "No",
              self_test:          "true",
              training_unit:      "true"
  )
end

