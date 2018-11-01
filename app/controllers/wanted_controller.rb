class WantedController < ApplicationController
    
def new
    @wanted = Wanted.new 
end
    
    
def create
     
    @wanted = Wanted.new(wanted_params)
    @wanted.save
    redirect_to wanted_path
end
    
    

    
    
    private
    
    def wanted_params
       params.require(:wanted).permit(:title,:initial_offer) 
    end
    

end