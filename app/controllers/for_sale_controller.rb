class ForSaleController < ApplicationController
    

def index
   @listings = Listing.all
end    
    
    
def create
    
    @item_name = params["item_name"]
    @description = params["description"]
    @price = params["price"]
    @user_id = params["user_id"]
    @image_url = params["image_url"]

    @listing = Listing.create(item_name: @item_name, description: @description, price: @price, user_id: @user_id, image_url: @image_url)
  
    render "welcome/for_sale.html.erb"
end
    
    
end