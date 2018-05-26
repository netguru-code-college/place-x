# frozen_string_literal: true

Rails.application.routes.draw do
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "groups/index"

  resources :groups

  root "groups#show"
end
