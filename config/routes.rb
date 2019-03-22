Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    root "welcome#main"
    
    get "/main" => "welcome#main"
    
    get "/news" => "welcome#news"
    
    get "/new_article" => "welcome#new_article"
    
    get "/news" => "welcome#index"

    post "/main" => "welcome#create"

    post "/new_article" => "news#create"

    #for sale listing routes
    
    get "/for_sale" => "for_sale#index"

    get "/new_listing" => "for_sale#new"

    post "/new_listing/create" => "for_sale#create"
    
    get "/for_sale/:id" => "for_sale#show"

    get "/for_sale/:id/edit" => "for_sale#edit"

    patch "/for_sale/:id" => "for_sale#update"

    #wanted listing routes
    
    get "/wanted" => "wanted#index"

    get "/wanted/new" => "wanted#new_wanted"

    post "/wanted" => "wanted#create"

    get "/wanted/:id" => "wanted#show"

    get "/wanted/:id/edit" => "wanted#edit"

    patch "/wanted/:id" => "wanted#update"

    delete "/wanted/:id" => "wanted#destroy"
  

end
