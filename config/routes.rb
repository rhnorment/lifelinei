Lifelinei::Application.routes.draw do

  resources :users

  # Root path:
  root                                      to: 'home#index'

  # About Us paths;
  get "about_us/main",                      as:  'about_us'
  get "about_us/mission",                   as:  'mission'
  get "about_us/partners",                  as:  'partners'
  get "about_us/help",                      as:  'help'

  # Solutions_path:
  # get "solutions/main",                     as: "solutions"
  # get "solutions/schools",                  as: "schools"
  # get "solutions/police",                   as: "police"
  # get "solutions/businesses",               as: "businesses"
  # get "solutions/fire",                     as: "fire"
  # get "solutions/dentists",                 as: "dentists"
  # get "solutions/churches",                 as: "churches"
  # get "solutions/individuals",              as: "individuals"

  # Products paths:
  get "products/main",                      as: 'products'
  get "products/aeds",                      as: 'aeds'
  get "products/accessories",               as: 'accessories'
  get "products/comparison",                as: 'comparison'
  get "products/registration",              as: 'registration'

  # Training paths:
  get "training/main",                      as: 'training'
  get "training/certified",                 as: 'certified'

  # Support & Services paths:
  get "services/main",                      as:   'services'
  get "services/administration",            as:   'administration'
  get "services/oversight",                 as:   'oversight'
  get "services/monitor",                   as:   'monitor'

  # RESTful routes:
  resources                                 :contacts
  resources                                 :surveys

end
