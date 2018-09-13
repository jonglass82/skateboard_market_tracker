class WelcomeController < ApplicationController
    
    
    def main
        
    end
    
    def news
        @articles = Article.all
    end
    
    def for_sale
       @listings = Listing.all 
    end
    
          
    def new
      @contact = contact.new
    end
    
    

end


