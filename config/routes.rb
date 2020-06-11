# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  pages = %w[about contact]
  pages.each do |page|
    get page, to: "pages##{page}"
  end

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # singlize_methods = %w[show, update, destroy]
  # resources :portfolios, except: %i[show, update, destroy]
  # singlize_methods.each do |method|
  #   get 'portfolio/:id', to: "portfolios##{method}"
  # end

  resources :portfolios
  get 'portfolios/angular_items'
end
