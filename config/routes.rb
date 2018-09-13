Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
      
    root 'welcome#main'
    
    get 'welcome/main', to: 'welcome#main'
    
    get 'welcome/news', to: 'welcome#news'
    
    get 'welcome/new_article', to: 'welcome#new_article'
    
    get 'welcome/for_sale', to: 'welcome#for_sale'
    
    get 'welcome/for_sale', to: 'for_sale#show'
    
    get 'welcome/for_sale', to: 'welcome#index'
    
    get 'welcome/wanted', to: 'welcome#wanted'
    
    post 'welcome/main', to: 'welcome#create'
    
    post 'welcome/new_listing', to: 'for_sale#create'
    
    get 'welcome/new_listing', to: 'welcome#new_listing'
    
    resources :contacts
    
#    resources :articles
    
    resources :listings

end
