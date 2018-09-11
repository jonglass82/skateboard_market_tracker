class WelcomeController < ApplicationController
    
    
    def main
        
    end
    
    def index
       @listings = Listing.all 
    end
    
          
    def new
      @contact = contact.new
    end
    
    

end


