Rails.application.routes.draw do
  
  namespace :api, :defaults => { format: :json} do
    get "/" => 'api#index', :defaults => { :format => 'xml' }
    
    resources :recruiters, only: [:index, :show, :create, :update, :destroy]
    resources :candidates, only: [:index, :show, :create, :update, :destroy]
    resources :references, only: [:index, :show, :create, :update, :destroy]
  end
  
end
