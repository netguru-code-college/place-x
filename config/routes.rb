# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get "places/index"
  root "places#index"
  resources :places do
    resources :comments
  end
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "groups/index"

  resources :groups

  root "groups#show"
end
