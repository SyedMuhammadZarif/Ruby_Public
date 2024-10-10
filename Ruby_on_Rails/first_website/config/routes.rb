Rails.application.routes.draw do
  get "pages/about"
  get "pages/home"
  get "pages/contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  
  # Defines the root path route ("/")
   root "pages#home"
   get 'about', to: 'pages#about'  # This defines the route for the About page
   get 'contact', to: 'pages#contact'
   post 'food_logs', to: 'pages#create'  # Route to create food logs
end