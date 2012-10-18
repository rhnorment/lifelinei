namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    # make_aeds
    # make_faqs
    make_user_accounts
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
            question: "What does SCA stand for?",
            answer: "Sudden Cardiac Arrest."
  )
  Faq.create!(number: "3",
            question: "What does PAD stand for?",
            answer: "Public Access Defibrillation."
  )
  Faq.create!(number: "4",
            question: "How does an AED work?",
            answer: "An AED works by its ability to diagnose the electrical activity in the heart.  AEDs specifically look electrical activity
                      which indicates SCA.  They diagnose, charge, and then are activated by the rescuer pressing the treatment button."
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
            question: "What kind of training is needed?",
            answer: "Some states require training while others do not in order to use an AED and be protected under that state's Good Samaritan Law.
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
                      The ZOLL AED Plus, for example, has a life expectancy of 20 years, while the Physio AEDs have end of life at 8 years."
  )
  Faq.create!(number: "11",
            question: "How long do the components last?",
            answer: "The three most common components in an AED are the pads, batteries, and rescue-ready kit.  Six of the seven FDA approved
                        manufacturers use Stat pads which last two years to three years.  The CPR-D-Padz from ZOLL last five years.  Most battery systems last 2-4
                        years and might be warranted for five.  These batteries are made by the manufacturer for their specific AED.
                        The ZOLL AED Plus is the only battery system that uses over-the-counter lithium-ion batteries that last 5 years in the
                        unit and is considerably less expensive than other battery packs.  Some AEDs come with scissors to cut clothing, a razor
                        to shave chest hair, non-latex gloves, non-latex barrier masks, and a micro-fiber towel to remove any water from the
                        patient's chest.  Depending on the AED this pack will either be standard or will be an added cost."
  )
  Faq.create!(number: "12",
            question: "What are electrode pads?",
            answer: "The pads are the physical part of the AED that go on the patient.  On the pads is an electrode which is where the treatment
                        originates.  Standard stat pads last two years.  Typically, the pads
                        need to be pealed from one surface and placed on the patient.  They adhere using a very sticky substance and are prone to
                        sticking to gloves, fingers, back to itself, or anything else it may make contact with.  The ZOLL AED Plus uses a contiguous
                        two pad system where the pads are placed first and then the non-adhesive surface is pealed away from the inside out removing
                        any chance of the pads sticking to anything but the patient."
  )
  Faq.create!(number: "13",
            question: "What type of Battery system is used?",
            answer: "Batteries are typically the proprietary energy source made by the manufacturer.  They last two to five years and cost anywhere
                        from $125.00 to $399.00.  These batteries will deliver anywhere from thirty to 150 treatments and have running times of fifteen
                        to sixty minutes.  The ZOLL AED Plus uses over-the-counter lithium-ion batteries that last five years and is no more
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
                        Oversight Program all of these services are free."
  )
  Faq.create!(number: "19",
            question: "How durable is the AED?",
            answer: "Units vary in durability.  The FDA has rated each unit's ability to repel dust, water, and absorb shocks. See our AED matrix."
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
            answer: "AEDs generally cost between $1,500.00 - $3,500.00 depending on the unit, quality, ability, pricing structure etc.
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
            question: "Do I need Medical Oversight /Medical Direction",
            answer: "Yes.  Unless the AED has been cleared by the FDA, every public, private, non-profit, and individual must have the doctor's
                      prescription, standing orders, and protocols.  The language from the FDA website regarding the federal requirements for
                      implementing an AED read:  'Since AEDs are prescription devices and must be labeled with the prescription statement required
                      by law - CFR 801.109, a physician who oversees the PAD program at a facility must write a prescription for the AED in order for
                      the facility to purchase it.'  Even though all states do not require Medical Direction, most manufacturers will require some
                      form of it. Our goal is to help each organization that we work with to make sure all local, state, and federal laws are
                      followed so the organization does not put itself at greater risk once they have implemented a PAD program."
  )
  Faq.create!(number: "27",
            question: "Can you explain in-depth Medical Oversight?",
            answer: "Medical Oversight is closely related to Medical Direction in that it is oftentimes the necessary maintenance program for the
                      unit and/or the training.  Currently, thirty-five states have some legal requirement for Medical Oversight.  This section will
                      cover the components of Medical Oversight and demonstrate how Medical Oversight is connected to the other areas of AED implementation.
                      Site Surveys, Number of Units, Placement, and Guidelines One of the first concerns organizations have when implementing a PAD
                      program is the quantity, and location of their AEDs.  While there are no absolute guidelines to implementing the number of units,
                      it should be the goal of the organization to make sure there is adequate coverage for their facility.  The American Heart
                      Association has advised that the round trip to the AED and back to the patient be less than three minutes.  By walking through
                      a facility, examining floor plans and the use of common sense, establishing the number of units and their location is a relatively
                      easy task to complete.  The site survey, which LifeLine is able to perform, will finalize the number of units needed for a
                      complete PAD program.  This gives the organization the chance to decide on a pilot, partial, or full deployment by taking into
                      account the number of units required and the current constraints an organization may have.  A good example of this is a public
                      school district.  While the district may need 50 units, they might only be able to budget for 25.  A good site survey will help
                      them determine which locations get the AEDs first and then help plan for the following annual budget and implementation process.
                      Generally, it is best to begin a program rather than wait for the perfect moment.  This will also help to determine the best
                      possible place to locate an AED.  Some factors that go into placement are:  visibility, location of personnel, location of other
                      existing safety equipment, and general access.  An AED needs to be highly visible because PAD programs are founded on awareness
                      and access.  It makes no sense to place an AED within the the AHA three-minute window if that AED is behind a locked door, in a
                      locked cabinet, or not even visible.  The visibility of the AED should bring awareness and comfort to the people in the facility.
                      If How many units is the first question, the second most popular question asked is 'What do we need to do to maintain the unit?
                      Thankfully, most AEDs are easy to maintain.  Most will run some sort of self diagnostic and use some sort of alert system if
                      something is not working properly with the unit.  The better the AED, the better the diagnostic and alert system is built in.
                      Most AEDs will either have an audible or a visible identification mark as to the status of the AED.  However, there are a few
                      units that have both.  The benefit to an audible and visible warning system is that if the unit runs its diagnostic and that is
                      after a daily check of the machine, it will be able to warn people before the next check is done.  All AEDs have been designed to
                      need minimal upkeep; however the extent of that upkeep varies greatly from one unit to the next.  Batteries are one of the greatest
                      concerns an organization should have when choosing an AED.  Out of the seven FDA approved manufacturers, six use a proprietary
                      battery pack while only ZOLL uses over-the-counter batteries.  All of the batteries are lithium-ion, but the sophistication of the
                      circuitry is what determines the lifespan of the battery.  On average, the proprietary battery packs last from 3-5 years according
                      to their manufacturers.  Keep in mind, that is only an average and there have been a multitude of cases where someone has looked at
                      their AED and after only 12-18 months they see the replace battery light on.  A system needs to be in place for an organization
                      to monitor battery life and to be able to get batteries at a very short notice.  The last thing an organization wants is to be
                      changing batteries every two years at $250.00 per battery while waiting any amount of time for the battery to arrive from the
                      manufacturer.  The ZOLL unit uses over-the-counter lithium ion batteries.  The batteries last 6-8 years when in the unit, it will
                      deliver up to 300 treatments, and have a running time of 90 minutes once the unit has been turned on.  One of the biggest benefits
                      to this system is that once in place, the organization will not have to worry about their batteries for a very long time.  The
                      batteries are readily available at any drug or large discount department store and directly from LifeLine for $75.00; nearly
                      $50.00 to $200.00+ less than competing proprietary battery systems.  Finally, the organization will remove the variable that is
                      innate to proprietary equipment:  if the manufacturer stops making the batteries, you need a new AED.  The pads are what are
                      attached to the body that contains the electrodes necessary for Defibrillation to work.  A system must be in place in order to
                      monitor the life of the pads.  The standard pad system used by six of the seven FDA approved manufacturers has a shelf life of two
                      years.  The pads are also very thin and have a tendency to become easily stuck to the rescuer.  The ZOLL unit uses either the
                      traditional pad system or their unique PAD-Z system.  These pads are thicker, retain moisture better, adhere to the body better,
                      and last longer -four years- than the other pads on the market.  Maintaining good pads is the responsibility of the organization
                      and is critical to a successful PAD program.  Currently, very few AEDs can be upgraded easily.  One of the best systems belongs
                      to the ZOLL unit which uses an IR port that can upgrade the software on the circuit board. One of the benefits to an AED that can
                      be upgraded is that an organization may not have to replace a unit for a very long time.  Many manufacturers have had upgrades to
                      waveform and unit operation over the past five years.  Units without an upgradeable feature may only last 3-5 years while a unit
                      that can be upgraded, like the ZOLL has a life expectancy of at least 20 years.  Depending on the upgrade, either LifeLine or ZOLL
                      will upgrade the ZOLL AED Plus for free; saving the organization thousands of dollars in service charges or new AEDs.  By tying
                      Medical Direction to Medical Oversight, an organization is able to demonstrate that it has an active PAD program.  Some physicians
                      may demand that a Medical Oversight program be in place before they write the prescription or that the local 9-1-1 dispatch has
                      been informed of the deployment, the type of unit, and its location. Organizations may choose to tie existing or new training to
                      their Medical Oversight program.  By doing this, the organization will be able to demonstrate that they have met the minimal
                      requirements set forth by the manufacturer or local government agency.  Monitoring who was trained, what they were trained on,
                      their certification, etc. will all help leave a methodical paper trail regarding the training of their PAD program .When an AED is
                      used in a rescue situation, several things could happen to it.  Its exposure to the elements may damage the unit, human fluids
                      could end up on it, cases could be cracked, etc.  Organizations need to have a system in place by which they can quickly respond
                      to the use of an AED.  Being able to quickly and cost-effectively replace batteries and pads is critical.  Other areas may include
                      shipping costs, cleaning costs, and replacement unit costs and downtime while their unit is being reset.  Another aspect is
                      ensuring that the physician overseeing the program is informed, that event data sheets are filled out completely, and that everyone
                      who needs to receive and review the information from the event is given the data from the AED.  One of the greatest challenges
                      facing an organization that implements a PAD program is ensuring that they have all of their documentation filled out completely
                      readily available.  This is especially critical after an event has occurred so that the organization may review how their program
                      was executed during those critical moments.  Online tracking is the standard in the industry.  By being able verify how many units,
                      where they are placed, the dates of pad and battery expiration, the diagnostic status, and personnel trained, the organization is
                      able to demonstrate due diligence in its PAD program.  These items are critical in ensuring that the unit is covered by the
                      warranty and the indemnification clause set forth by the manufacturer.  Failure to perform any of these tasks or tasks outlined by
                      the physician or manufacturer could result in an improper or deficient PAD program which would negate the warranty and
                      indemnification clause in the case of a wrongful death lawsuit.  Medical Oversight is generally a bit of front-end and a lot of
                      back-end work by an organization to help another organization implement a program correctly.  Most organizations do not have the
                      time or personnel to properly implement a program and there are many examples of the terrible things that can happen when a novice
                      chooses to oversee a program.  A good Medical Oversight Program will also help the contact person manage the program allowing
                      more time to be spent on other activities rather than worrying about the AED.  By having a comprehensive Medical Oversight plan
                      ranging from the prescription to the plan after an AED has been used, the organization will build another barrier
                      from liability which was one of its primary goals in the implementation of a PAD program."
  )
  Faq.create!(number: "28",
            question: "What is my level of liability for having and not having an AED?",
            answer: "Liability levels vary.  We are not lawyers and so we can not give legal advice.  However, there are resources available to help you
                      understand what your legal liability for having and for not having an AED.  The following sites may be of help to your
                      organization:  www.early-defib.org, www.heart.org and www.osha.gov."
  )
  Faq.create!(number: "29",
            question: "Can I get sued for having an AED?",
            answer: "There is no single step an organization can do to prevent a lawsuit from being filed.  However, according to the American Heart
                      Association, there have been no successful lawsuits against any organization that has implemented a PAD program.  There have been
                      successful lawsuits against organizations that have not implemented a PAD program.  The newest area of concerns for businesses
                      regards proper and complete implementation.  This is where the value of a good Medical Direction and Medical Oversight program
                      comes into play.  This also touches on product warranties and indemnification clauses."
  )
  Faq.create!(number: "30",
            question: "How many people do I train?",
            answer: "The American Heart Association recommends 6-8 people trained per AED.  However, depending on the number of shifts, hours of
                      operation, etc. this number may vary.  LifeLine will train classes of up to ten people for a flat fee."
  )
  Faq.create!(number: "31",
            question: "When do I get Medical Oversight / Medical Direction?",
            answer: "Medical Direction and Oversight become immediately active once the AEDs are paid for and delivered.  Depending on the state,
                        there may be different standards for when Medical Direction becomes active or inactive.  LifeLine will help your organization
                        through that process."
  )
end

def make_user_accounts
  User.delete_all
  admin1 = User.create!( name:          "Hunt Norment",
                customer:               "LaunchRipe LLC",
                enail:                  "norment@gmail.com",
                password:               "mmedia",
                password_comfirmation:  "mmedia",
                customer_admin:          false
  )
  admin1.toggle(:admin)
  admin2 = User.create!( name:                   "David Matychuck",
                         customer:               "LiefeLine, Inc.",
                         enail:                  "dsm@lifelinei.com",
                         password:               "soccer",
                         password_comfirmation:  "soccer",
                         customer_admin:          false
  )
  admin2.toggle(:admin)
end

