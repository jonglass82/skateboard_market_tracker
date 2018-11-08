class WelcomeController < ApplicationController
    
    
#    def main
#        @sales = Sale.all
#
#        respond_to do |format|
#            format.html
#        end
#    end

    def for_sale
    @listings = Listing.all
    end
    

    def new
      @contact = contact.new
    end


    def news
      @articles = Article.all
    end
    
    
end


