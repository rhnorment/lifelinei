Lifelinei::Application.routes.draw do

  # Root path:
  root                                      to: 'home#index'

  # About Us paths;
  get "about_us/main",                      as:  'about_us'
  get "about_us/mission",                   as:  'mission'
  get "about_us/testimonials",              as:  'testimonials'
  get "about_us/partners",                  as:  'partners'

  # Solutions_path:
  get "solutions/main",                     as: "solutions"
  get "solutions/schools",                  as: "schools"
  get "solutions/police",                   as: "police"
  get "solutions/businesses",               as: "businesses"
  get "solutions/fire",                     as: "fire"
  get "solutions/dentists",                 as: "dentists"
  get "solutions/churches",                 as: "churches"
  get "solutions/individuals",              as: "individuals"

  # Products paths:
  get "products/main",                      as: 'products'
  get "products/aed",                       as: 'aed'
  get "products/accessories",               as: 'accessories'
  get "products/customer_reviews",          as: 'customer_reviews'
  get "products/professional_reviews",      as: 'professional_reviews'

  # Support & Services paths:
  get "services/main",                      as:   'services'
  get "services/administration",            as:   'administration'
  get "services/oversight",                 as:   'oversight'
  get "services/training",                  as:   'training'
  get "services/financing",                 as:   'financing'
  get "services/laws",                      as:   'laws'
  get "services/faqs",                      as:   'faqs'
  get "services/help",                      as:   'help'

end
