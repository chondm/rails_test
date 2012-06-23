PromotionDemo::Application.routes.draw do
  resources :promotions
  resources :product_bundles, :only => [:index, :show]
  root :to => 'promotions#index'
end
