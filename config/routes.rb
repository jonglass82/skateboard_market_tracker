Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    root "welcome#main"
    
    get "/main" => "welcome#main"
    
    get "/news" => "welcome#news"
    
    get "/new_article" => "welcome#new_article"
    
    get "/news" => "welcome#index"

    post "/main" => "welcome#create"

    post "/new_article" => "news#create"

    
    get "/for_sale" => "for_sale#index"
    
    get "/for_sale" => "for_sale#show"

    get "/new_listing" => "for_sale#new"

    post "/new_listing/create" => "for_sale#create"
    
    
    get "/new_wanted" => "wanted#new_wanted"

    get "/wanted" => "wanted#index"

    get "/wanted/show/:id" => "wanted#show"

    post "/new_wanted/create" => "wanted#create"
  

end
