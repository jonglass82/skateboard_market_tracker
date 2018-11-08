Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
      
    root 'welcome#main'
    
    get '/main', to: 'welcome#main'
    
    get '/news', to: 'welcome#news'
    
    get '/new_article', to: 'welcome#new_article'
    
    get '/news', to: 'welcome#index'
    
    get '/for_sale', to: 'welcome#for_sale'
    
    get '/for_sale', to: 'for_sale#show'
    
    get '/for_sale', to: 'welcome#index'
    
    get '/wanted', to: 'welcome#wanted'
    
    post '/main', to: 'welcome#create'
    
    post '/new_listing', to: 'for_sale#create'
    
    post '/new_article', to: 'news#create'
    
    post '/new_wanted', to: 'wanted#create'
    
    get '/new_listing', to: 'welcome#new_listing'
    
    get '/new_wanted', to: 'welcome#new_wanted'
    
    resources :contacts
    
    resources :articles
    
    resources :sales
    
    resources :listings

end
