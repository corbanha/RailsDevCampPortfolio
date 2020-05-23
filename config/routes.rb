# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'

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

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/angular_items'

end
