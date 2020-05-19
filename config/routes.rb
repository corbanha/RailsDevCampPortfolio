# frozen_string_literal: true

Rails.application.routes.draw do

  resources :portfolios
  root to: 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  resources :blogs
end
