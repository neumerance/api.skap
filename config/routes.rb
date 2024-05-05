# frozen_string_literal: true

Rails.application.routes.draw do
  if Rails.env.production?
    constraints(:protocol => "http://") do
      match "/(*path)" => redirect { |params, request|
        "https://#{request.host_with_port}/#{params[:path]}"
      }
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'application#info'
end
