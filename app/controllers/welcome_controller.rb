class WelcomeController < ApplicationController

    
    def main

      @sales = Sale.all
      @listings = Listing.all
      @articles = Article.all
      @wanteds = Wanted.all
      @last_four_listings = Listing.last(4)
      @last_four_wanteds = Wanted.last(4)
      @top_article = Article.last
      
    end
    
    
end


