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

    def edit
        @wanted = Wanted.find_by_id(params["id"])
        render "edit.html.erb"
    end


    def update
        @wanted = Wanted.find_by_id(params["id"])
        @wanted.title = params["title"]
        @wanted.initial_offer = params["initial_offer"]
        @wanted.save

        render "wanted_update_confirmation.html.erb"

    end


    def destroy
        @wanted = Wanted.find_by_id(params["id"])
        @wanted.destroy

        render "wanted_destroy_confirmation.html.erb"
    end
  

end