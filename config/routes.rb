Rails.application.routes.draw do
resources :contacts do
resources :address
end
  
end
