Rails.application.routes.draw do
  resources :patients, only: [] do
    resources :recommendations, only: [:index], controller: 'patients/recommendations'
  end

  resources :consultation_requests, only: [:create] do
    resources :recommendations, only: [:create]
  end
end
