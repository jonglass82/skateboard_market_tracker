class WantedController < ApplicationController
    
    def index
        @wanteds = Wanted.all
        render "welcome/wanted.html.erb"
    end

    def new_wanted
        render "welcome/new_wanted.html.erb"
    end
        
        
    def create
      
          @wanted = Wanted.create(
            title: params["title"], 
            initial_offer: params["initial_offer"], 
            user_id: params["user_id"], 
            image_url: params["image_url"])
        
          render "welcome/wanted_confirmation.html.erb"
    end
  

end