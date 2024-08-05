Rails.application.routes.draw do

    # 404/500 pages
    get 'errors/not_found'
    get 'errors/internal_server_error'
    match "/404", to: "errors#not_found", via: :all
    match "/500", to: "errors#internal_server_error", via: :all

  devise_scope :admins do
    # Redirests signing out users back to sign-in
    get "admins", to: "devise/sessions#new"
  end

  devise_for :admins, controllers: { registrations: "registrations", sessions: "sessions" }
  root "pages#home"


  post 'uploader/image', to: 'uploader#image' #add upload image to posts
  get 'blog', to: 'posts#index', as: :blog
  resources :posts

  resources :aviations

  resources :camps
  resources :discover_flights
  resources :messages
  resources :enrollments
  resources :book_downloads
  resources :checkouts
  resources :quiz_results

  # Enrollment form
  #get 'enroll-at-suncity', to: 'enrollments#new', as: :enroll
  get 'enrollment-confirmation', to: 'enrollments#confirmation', as: :enroll_confirmation

  # Camp form -> now called Experience Aviation
  #get 'aerocamp', to: 'camps#new', as: :aerocamp
  get 'experience-aviation', to: 'camps#new', as: :experience_aviation
  get 'experience-aviation-confirmation', to: 'camps#confirmation', as: :camp_confirmation

  # Youth Ground form (Aviation 101)
  get 'youth-aviation-classes', to: 'aviations#new', as: :youth_ground
  get 'youth-aviation-class-confirmation', to: 'aviations#confirmation', as: :aviation_confirmation

  # Contact form
  get 'contact', to: 'messages#new', as: :contact
  get 'contact-confirmation', to: 'messages#confirmation', as: :contact_confirmation
  #get 'visit-simplifly', to: 'messages#location', as: :location
  #get 'instruct-at-simplifly', to: 'messages#cfi', as: :cfi

  # Book Download
  get 'book-download-confirmation', to: 'book_downloads#confirmation', as: :book_download_confirmation

  # Discovery flight form
  get 'discovery-flight', to: 'discover_flights#new', as: :discovery_flight
  get 'discovery-flight-confirmation', to: 'discover_flights#confirmation', as: :discovery_confirmation

  # Check out form
  get 'visit-sun-city', to: 'checkouts#new', as: :checkout_sun_city
  get 'visit-sun-city-confirmation', to: 'checkouts#confirmation', as: :checkout_sun_city_confirmation

  # Quiz form
  get 'quiz', to: 'quiz_results#new', as: :quiz
  get 'quiz-confirmation', to: 'quiz_results#confirmation', as: :quiz_confirmation

  # Static Pages
  get 'youth-aviation-programs', to: 'pages#youth', as: :youth
  get 'group-ground-school', to: 'pages#group_ground', as: :group_ground
  get 'about', to: 'pages#about_us', as: :about
  get 'planes', to: 'pages#fixed_wing', as: :planes
  get 'pilot-training-guide', to: 'pages#pilot_training_guide', as: :pilot_training_guide
  get 'why-become-a-pilot', to: 'pages#why_pilot', as: :why_pilot
  get 'multi-engine-rating', to: 'pages#multi', as: :multi
  get 'commercial-pilot-training', to: 'pages#commercial', as: :commercial
  get 'instrument-rating', to: 'pages#instrument', as: :instrument
  get 'private-pilot-training', to: 'pages#private_pilot', as: :private_pilot
  get 'certified-flight-instructor-cfi', to: 'pages#cfi', as: :cfi
  get 'airline-transport-pilot-atp', to: 'pages#atp', as: :atp
  #get 'seaplane-pilot-training', to: 'pages#seaplane', as: :seaplane
  get 'flight-review-bfr', to: 'pages#bfr', as: :bfr
  get 'instrument-proficiency-check-ipc', to: 'pages#ipc', as: :ipc
  get 'wingman-family-member-training', to: 'pages#wingman', as: :wingman
  get 'professional-pilot-course', to: 'pages#professional_pilot_course', as: :ppc
  get 'flight-training-pilot-programs', to: 'pages#pilot_courses', as: :pilot_courses
  get 'terms-of-service-privacy-policy', to: 'pages#tos', as: :tos
  get 'stratus-finance', to: 'pages#stratus', as: :stratus
  get 'cessna-172', to: 'pages#cessna172', as: :cessna172
  get 'beechcraft-duchess-multi-engine-airplane', to: 'pages#duchess', as: :duchess
  get 'redbird-flight-simulator', to: 'pages#redbird', as: :redbird
  #get 'airplane-single-engine-sea-ses', to: 'pages#seaplane_fleet', as: :seaplane_fleet

  # Previous Site's Routes
  get 'aerocamp', to: 'camps#new'
  get 'fleet', to: 'pages#fixed_wing'
  get 'student-resources', to: 'posts#index'
  get 'contact-us', to: 'messages#new'
  get 'private-course', to: 'pages#private_pilot'
  get 'flight-reviews', to: 'pages#bfr'
  get 'multiengine-course', to: 'pages#multi'
  get 'commercial-course', to: 'pages#commercial'
  get 'discovery-flights', to: 'discover_flights#new'
  get 'frequently-asked-questions', to: 'pages#pilot_training_guide'
  get 'flight-instructor-courses', to: 'pages#cfi'
  get 'flight-instrument-instructor', to: 'pages#cfi'
  get 'instrument-proficiency-check-ipc', to: 'pages#ipc'
  get 'airline-transport-pilot-license', to: 'pages#atp'


  #get 'meritize', to: 'pages#meritize', as: :meritize
  #get 'accelerated-pilot-training', to: 'pages#accelerated', as: :accelerated
  #get 'flexible-pilot-training', to: 'pages#flexible', as: :flexible
  #get 'why-simplifly', to: 'pages#why_simplifly', as: :why_simplifly
  #get 'financing', to: 'pages#financing', as: :financing
  #get 'pilot-training-pricing-calculator', to: 'pages#cost'
  #get 'approximate-pilot-training-costs', to: 'pages#cost', as: :cost
  #get 'timeline-to-be-a-pilot', to: 'pages#timeline', as: :timeline
  #get 'pilot-training', to: 'pages#pilot_training', as: :pilot_training

  get 'pilot-programs', to: 'pages#pilot_courses', as: :programs
  get 'our-team', to: 'pages#our_team', as: :our_team

  # Dynamic Location pages
  # get 'pilot-training', to: 'pages#pilot_programs'  ## HELLO -> this needs to be fixed with better copy.  This is st. louis images and and copy.  I just used an existing page for this.
  get '/pilot-training', to: 'pages#pilot_courses'
  get '/pilot-training/:location_slug', to: 'locations#show', as: :location

  #get 'aircraft-rental', to: 'pages#aircraft_rental', as: :aircraft_rental
  #get 'fixed-wing-airplane-fleet', to: 'pages#fixed_wing', as: :fixed_wing
  #get 'rotary-wing-helicopter-fleet', to: 'pages#rotary_wing', as: :rotary_wing
  #get 'airplane-pilot-training', to: 'pages#airplane_training', as: :airplane_training
  #get 'helicopter-pilot-training', to: 'pages#helicopter_training', as: :helicopter_training
  #get 'about-ideal-aviation', to: 'pages#about_us', as: :about_us
  #get 'advanced_training', to: 'pages#advanced_training', as: :advanced_training
  #get 'pilot-resources', to: 'pages#pilot_resources', as: :pilot_resources
  #get 'careers', to: 'pages#careers', as: :careers
end
