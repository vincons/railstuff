class HomeController < ApplicationController
  
  def index
    #render index2
  end
  
  def index1
    
  end
  
    def index2
    
    end
    
    def show
      render params["id"]
    end
end
