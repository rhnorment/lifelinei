Lifelinei::Application.routes.draw do

  # Root path:
  root                                      to: 'home#index'
  match '/w9',                              to: 'portals#w9'
  match '/login',                           to: 'portals#login'

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

  # Customer Portal paths:
  get 'portals/lifeline',                   as: 'lifeline'
  get 'portals/jli',                        as: 'jli'
  get 'portals/mayo',                       as: 'mayo'
  get 'portals/ems',                        as: 'ems'
  get 'portals/landolakes',                 as: 'landolakes'
  get 'portals/ampride',                    as: 'ampride'
  get 'portals/customerlead',               as: 'customerlead'
  get 'portals/portalfull',                 as: 'portalfull'
  get 'portals/aed',                        as: 'aed'
  get 'portals/maximum',                    as: 'maximum'
  get 'portals/login',                      as: 'portal_login'

  # Customer Login paths:
  get 'customers/login',                    as: 'login'

  # RESTful routes:
  resources                                 :contacts
  resources                                 :surveys
  resources                                 :users

end
