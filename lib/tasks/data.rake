namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    # make_aeds
    make_faqs
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

def make_faqs
  Faq.delete_all
  Faq.create!(number: "1",
              question: "What does AED stand for?",
              answer: "Automated External Defibrillator."
  )
  Faq.create!(number: "2",
              question: "What does SCA stand for??",
              answer: "Sudden Cardiac Arrest."
  )
  Faq.create!(number: "3",
              question: "What does PAD stand for?",
              answer: "Public Access Defibrillation."
  )
  Faq.create!(number: "4",
              question: "How does an AED work?",
              answer: "An AED works by its ability to diagnose the electrical activity in the heart.  AEDs specifically look electrical activity
                      which indicates SCA.  They diagnose, charge, and then are activated by the rescuer pressing the treatment button.."
  )
  Faq.create!(number: "5",
              question: "What is the size of an AED?",
              answer: "AEDs range in size from three to seven pounds."
  )
  Faq.create!(number: "6",
              question: "How many AEDs should we purchase?",
              answer: "A site survey is available based off of floor plans, site plans, and common sense.  The American Heart Association
                      recommends that the round trip to and from an AED should be no greater than three minutes."
  )
  Faq.create!(number: "7",
              question: "When do I get my AED?",
              answer: "Once all of the paperwork, payment, and training are complete, the AEDs will arrive shortly thereafter."
  )
  Faq.create!(number: "8",
              question: " What kind of training is needed?",
              answer: "Some states require training while others do not in order to use and an AED and be protected under that state's Good Samaritan Law.
                      If training is required there is some sort of standard that must be met.  The three main organizations that provide nationally
                      recognized training for AED use are The American Heart Association, The American Red Cross, and The National Safety Council."
  )
  Faq.create!(number: "9",
              question: "Where do I put my AED?",
              answer: "AEDs should be visible, easy to grab, but also secure.  By placing an AED in a high-profile setting, it is more likely
                      that a trained rescuer will be able to see and use the AED than if it was put in a locked cabinet or somewhere less noticeable."
  )
  Faq.create!(number: "10",
              question: "How long does an AED last?",
              answer: "Most AEDs are warranted for five years from the manufacturer.  However, some AEDs are designed to last much longer.
                      The ZOLL AED Plus, for example, has a life expectancy of at least 20 years."
  )
  Faq.create!(number: "11",
              question: "How long do the components last?",
              answer: "The three most common components in an AED are the pads, batteries, and rescue-ready kit.  Six of the seven FDA approved
                        manufacturers use Stat pads which last two years.  The CPR-D-Padz from ZOLL last four years.  Most battery systems last 2-4
                        years and might be warranted for five.  These batteries are made by the manufacturer for their specific AED.
                        The ZOLL AED Plus is the only battery system that uses over-the-counter lithium-ion batteries that last 6-8 years in the
                        unit and is considerably less expensive than other battery packs.  Some AEDs come with scissors to cut clothing, a razor
                        to shave chest hair, non-latex gloves, non-latex barrier masks, and a micro-fiber towel to remove any water from the
                        patient's chest.  Depending on the AED this pack will either be standard or will be an added cost."
  )
  Faq.create!(number: "12",
              question: "What are electrode pads?",
              answer: "The pads are the physical part of the AED that go on the patient.  On the pads is an electrode which is where the treatment
                        originates.  Standard stat pads last two years.  The Stat-Padz for the ZOLL AED Plus last four years.  Typically, the pads
                        need to be pealed from one surface and placed on the patient.  They adhere using a very sticky substance and are prone to
                        sticking to gloves, fingers, back to itself, or anything else it may make contact with.  The ZOLL AED Plus uses a contiguous
                        two pad system where the pads are placed first and then the non-adhesive surface is pealed away from the inside out removing
                        any chance of the pads sticking to anything but the patient."
  )
  Faq.create!(number: "13",
              question: "What type of Battery system is used?",
              answer: "Batteries are typically the proprietary energy source made by the manufacturer.  They last two to five years and cost anywhere f
                        rom $125.00 to $399.00.  These batteries will deliver anywhere from thirty to 150 treatments and have running times of fifteen
                        to sixty minutes.  The ZOLL AED Plus uses over-the-counter lithium-ion batteries that last six to eight years and is no more
                        than $75.00 for a set of ten, will deliver up to 300 treatments with 90 minutes of continuous running time."
  )
  Faq.create!(number: "14",
              question: "Will I need to upgrade my AED?",
              answer: "Upgrades are possible through the duration of your AED program.  Some AEDs are upgraded with data cards while others use
                      infra-red ports.  Upgrades may be free, may not be necessary, and may or may not be done by your manufacturer or implementation
                      organization.  Depending on the upgrade and unit, LifeLine may or may not be able to assist your organization."
  )
  Faq.create!(number: "15",
              question: "What are legal requirements for AED implementation?",
              answer: "Legal requirements vary depending on the state you live in or industry that you work in.  It is important to have a plan in
                        place to monitor legal requirements because they will vary from state to state, even county to county.  LifeLine will help
                        your organization monitor all legal requirements for your PAD program."
  )
  Faq.create!(number: "16",
              question: "What is 9-1-1 coordination?",
              answer: "9-1-1 coordination is required by almost every state when an organization implements a PAD program.  LifeLine will help
                        with this task and will contact the dispatch that receives 9-1-1 calls from your organization's land telephone line.
                        We will inform them on what type of unit was placed, its location, and whether or not training has taken place."
  )
  Faq.create!(number: "17",
              question: "How do I clean my AED after it has been used?",
              answer: "If your AEDs are in LifeLine's Medical Oversight program, we will handle the cleaning, resetting, and dissemination of
                        information free of charge."
  )
  Faq.create!(number: "18",
              question: "What's my post-event process?",
              answer: "By law, you must fill out the Event Data Sheet provided by LifeLine under our Medical Oversight Program.  LifeLine must be
                        contacted and depending on the location of the AED which was used, LifeLine will either drop a new unit off to be used in
                        the interim or have one shipped to your location.  Bag up the AED which was used and place it in the box that came with
                        the replacement unit.  Return postage will be paid for by LifeLine.  Once the unit is cleaned, reset, and information gathered,
                        LifeLine will send your original AED back with return postage for the AED used in the interim.  Under LifeLine's Medical
                        Oversight Program all of these services are free as many times as you need them."
  )
  Faq.create!(number: "19",
              question: "How durable is the AED?",
              answer: "Units vary in durability.  The FDA has rated each unit's ability to repel dust, water, and absorb shocks."
  )
  Faq.create!(number: "20",
              question: " Who can use an AED and who can receive treatment from an AED?",
              answer: "An AED can be used on anyone who has gone into ventricular fibrillation.  It is not necessary for the rescuer to determine
                        why a person has become unconscious.  If the person is in ventricular fibrillation the AED will advise a treatment.  If
                        they are not in ventricular fibrillation, the AED will not allow itself to deliver a treatment.  Statistically six out of
                        ten people who become unconscious will need a defibrillator, four out of ten will not.  It is best to find the defibrillator
                        that will help your rescuers do what is needed as often as possible."
  )
  Faq.create!(number: "21",
              question: "What is the cost of an AED?",
              answer: "AEDs generally cost between $1,500.00 - $2,500.00 depending on the unit, quality, ability, pricing structure etc.
                        However, an organization would be doing itself a disservice to believe that the cost of the product is the most important factor."
  )
  Faq.create!(number: "22",
              question: "What is Medical oversight and Medical Direction?",
              answer: "Medical Direction comprises the doctors' prescription, standing orders, protocols, EMS coordination, medical oversight,
                        and usually training.  It is a complex process that is the backbone of all legal requirements for the implementation of a
                        PAD program.  The failure to comply with federal, state, local, or manufacturer requirements could put the organization which
                        has implemented the PAD program in legal and financial danger.  Warranties, indemnification clauses, and industry requirements
                        all are affected by Medical Direction."
  )
  Faq.create!(number: "23",
              question: "Where do I get Medical Oversight / Medical Direction?",
              answer: "Medical Direction and Oversight are provided by LifeLine free of charge with the purchase of units through our organization.
                        On a yearly basis, the cost is $100.00 per site."
  )
  Faq.create!(number: "24",
              question: "When do I get Medical Oversight / Medical Direction?",
              answer: "Medical Direction and Oversight become immediately active once the AEDs are paid for and delivered.  Depending on the state,
                        there may be different standards for when Medical Direction becomes active or inactive.  LifeLine will help your organization
                        through that process."
  )
  Faq.create!(number: "25",
              question: "Who administers Medical Oversight / Medical Direction?",
              answer: "The doctor writes the prescription and LifeLine helps each organization administer their own Medical Oversight program.
                        Because LifeLine can not be on-site 24/7 it is the responsibility of the organization that has the AEDs on-site to regularly
                        check and document the status of the AEDs.  LifeLine is able to facilitate though not totally complete this step."
  )
  Faq.create!(number: "26",
              question: "Do I need Medical Oversight /Medical Direction?",
              answer: "Yes.  Unless the AED has been cleared by the FDA, every public, private, non-profit, and individual must have the doctor's
                        prescription, standing orders, and protocols.  The language from the FDA's website regarding the federal requirements
                        for implementing an AED read:  Since AEDs are prescription devices and must be labeled with the prescription statement
                        required by law, a physician who oversees the PAD program at a facility must write a prescription for the
                        AED in order for the facility to purchase it.  Even though all states do not require Medical Direction, most manufacturers
                        will require some form of it.  Our goal is to help each organization that we work with to make sure all local, state,
                        and federal laws are followed so the organization does not put itself at greater risk once they have implemented a PAD program."
  )
  Faq.create!(number: "27",
              question: "Where do I get Medical Oversight / Medical Direction?",
              answer: "Medical Direction and Oversight are provided by LifeLine free of charge with the purchase of units through our organization.
                        On a yearly basis, the cost is $100.00 per site."
  )
  Faq.create!(number: "28",
              question: "When do I get Medical Oversight / Medical Direction?",
              answer: "Medical Direction and Oversight become immediately active once the AEDs are paid for and delivered.  Depending on the state,
                        there may be different standards for when Medical Direction becomes active or inactive.  LifeLine will help your organization
                        through that process."
  )
  Faq.create!(number: "29",
              question: "Who administers Medical Oversight / Medical Direction?",
              answer: "The doctor writes the prescription and LifeLine helps each organization administer their own Medical Oversight program.
                        Because LifeLine can not be on-site 24/7 it is the responsibility of the organization that has the AEDs on-site to regularly
                        check and document the status of the AEDs.  LifeLine is able to facilitate though not totally complete this step."
  )
  Faq.create!(number: "30",
              question: "What is Medical oversight and Medical Direction?",
              answer: "Medical Direction comprises the doctors' prescription, standing orders, protocols, EMS coordination, medical oversight,
                        and usually training.  It is a complex process that is the backbone of all legal requirements for the implementation of a
                        PAD program.  The failure to comply with federal, state, local, or manufacturer requirements could put the organization which
                        has implemented the PAD program in legal and financial danger.  Warranties, indemnification clauses, and industry requirements
                        all are affected by Medical Direction."
  )
  Faq.create!(number: "31",
              question: "Where do I get Medical Oversight / Medical Direction?",
              answer: "Medical Direction and Oversight are provided by LifeLine free of charge with the purchase of units through our organization.
                        On a yearly basis, the cost is $100.00 per site."
  )
  Faq.create!(number: "32",
              question: "When do I get Medical Oversight / Medical Direction?",
              answer: "Medical Direction and Oversight become immediately active once the AEDs are paid for and delivered.  Depending on the state,
                        there may be different standards for when Medical Direction becomes active or inactive.  LifeLine will help your organization
                        through that process."
  )
  Faq.create!(number: "33",
              question: "Who administers Medical Oversight / Medical Direction?",
              answer: "The doctor writes the prescription and LifeLine helps each organization administer their own Medical Oversight program.
                        Because LifeLine can not be on-site 24/7 it is the responsibility of the organization that has the AEDs on-site to regularly
                        check and document the status of the AEDs.  LifeLine is able to facilitate though not totally complete this step."
  )
  Faq.create!(number: "34",
              question: "Do I need Medical Oversight /Medical Direction?",
              answer: "Yes.  Unless the AED has been cleared by the FDA, every public, private, non-profit, and individual must have the doctor's
                        prescription, standing orders, and protocols.  The language from the FDA's website regarding the federal requirements
                        for implementing an AED read:  Since AEDs are prescription devices and must be labeled with the prescription statement
                        required by law, a physician who oversees the PAD program at a facility must write a prescription for the
                        AED in order for the facility to purchase it.  Even though all states do not require Medical Direction, most manufacturers
                        will require some form of it.  Our goal is to help each organization that we work with to make sure all local, state,
                        and federal laws are followed so the organization does not put itself at greater risk once they have implemented a PAD program."
  )
end