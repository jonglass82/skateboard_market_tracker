class WantedController < ApplicationController
    
    def index
        @wanteds = Wanted.all
        render "wanted/wanted.html.erb"
    end

    def new_wanted
        render "wanted/new_wanted.html.erb"
    end
        
        
    def create
      
          @wanted = Wanted.create(
            title: params["title"], 
            initial_offer: params["initial_offer"], 
            user_id: params["user_id"], 
            image_url: params["image_url"])
        
          render "wanted/wanted_confirmation.html.erb"
    end

    def show
        @wanted = Wanted.find_by_id(params["id"])
        render "wanted/show.html.erb"
    end
  

end