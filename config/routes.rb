Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    
    
    get 'welcome/main', to: 'welcome#main'
    
    post 'welcome/main', to: 'welcome#create'
    
    get 'welcome/news', to: 'welcome#news'
    
    get 'welcome/for_sale', to: 'welcome#for_sale'
    
    get 'welcome/wanted', to: 'welcome#wanted'
    
    get 'welcome/new_listing', to: 'welcome#new_listing'
    
    get 'welcome/main', to:'welcome#news'
    
    root 'welcome#main'
    
    resources :contacts
    
    resources :articles
    
    resources :listings

end
