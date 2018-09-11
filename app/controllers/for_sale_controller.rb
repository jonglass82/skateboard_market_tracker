class ForSaleController < ApplicationController
    

def index
   @listings = Listing.all
end    
    
    
def new
    @listing = Listing.new
end
    
    
def create
    @listing = Listing.new(listing_params)
    @listing.save
    redirect_to welcome_for_sale_path
end
    
    
    private
    
    def listing_params
       params.require(:listing).permit(:item_name, :description, :price) 
    end
    
    
    
    
end