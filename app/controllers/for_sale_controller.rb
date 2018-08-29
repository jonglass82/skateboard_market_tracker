class ForSaleItems < ApplicationController
    
def new
    @listing = Listing.new
end
    

    
def create
    @listing = Listing.new(contact_params)
    @listing.save
#      redirect_to root_path
end
    
    
    private
    
    def contact_params
       params.require(:listing).permit(:item_name, :description, :price) 
    end
    
    
    
    
end