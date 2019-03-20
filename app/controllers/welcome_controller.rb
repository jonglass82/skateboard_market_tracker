class WelcomeController < ApplicationController
    
    
    def main

      @sales = Sale.all
      @listings = Listing.all
      @last_four_listings = Listing.last(4)
      
    end


    def create

      
    end


    def news
      @articles = Article.all
    end
    
    
end


