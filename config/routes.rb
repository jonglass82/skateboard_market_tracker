Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    
    
    get 'welcome/main', to: 'welcome#main'
    
    post 'welcome/main', to: 'welcome#create'
    
    get 'welcome/news', to: 'welcome#news'
    
    get 'welcome/for_sale', to: 'welcome#for_sale'
    
    get 'welcome/wanted', to: 'welcome#wanted'
    
    root 'welcome#main'
    
    resources :contacts

end
