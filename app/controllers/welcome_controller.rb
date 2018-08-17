class WelcomeController < ApplicationController
    
#      
    def new
      @contact = contact.new
      
    end
    
    def create
      @contact = Contact.new(contact_params)
      @contact.save
     redirect_to root_path
    end
    
    
    private
    
    def contact_params
       params.require(:contact).permit(:first_name, :last_name, :email) 
    end
    

    
 
    

end


