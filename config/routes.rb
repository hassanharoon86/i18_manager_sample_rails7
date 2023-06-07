Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  mount RailsI18nManager::Engine, at: "/", as: "rails_i18n_manager"
end
