# frozen_string_literal: true

Rails.application.routes.draw do
  # Auth routes (Devise)
  devise_for :users

  # Page d'accueil
  root to: 'home#index'

  # Sanity check route
  get 'home/index'
end
