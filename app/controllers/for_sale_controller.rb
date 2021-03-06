class ForSaleController < ApplicationController
    

    def index
       @listings = Listing.all
    end    

    def new
      render "for_sale/new_listing.html"
    end
    
    
    def create
        response = Cloudinary::Uploader.upload(params[:image_url])
        cloudinary_url = response["secure_url"]

        @listing = Listing.create(
            item_name: params["item_name"], 
            description: params["description"], 
            price: params["price"], 
            user_id: params["user_id"], 
            image_url: cloudinary_url)
      
        render "for_sale/for_sale_confirmation.html.erb"
    end


    def show
        @listing = Listing.find_by_id(params["id"])
        render "for_sale/show.html.erb"
    end

    def edit
        @listing = Listing.find_by_id(params["id"])
        render "for_sale/edit.html.erb"
    end


    def update
        @listing = Listing.find_by_id(params["id"])
        @listing.item_name = params["item_name"]
        @listing.price = params["price"]
        @listing.description = params["description"]
        @listing.save

        render "listing_update_confirmation.html.erb"
    end


    def destroy
        @listing = Listing.find_by_id(params["id"])
        @listing.destroy

        render "for_sale_destroy_confirmation.html.erb"
    end
    
    
end