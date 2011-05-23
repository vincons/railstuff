class ListmsgsController < ApplicationController

        def index
                @msgs = Msgdata.all
        end
        
        def destroy_all
        
                @msgs = Msgdata.destroy_all
                
                 redirect_to(:action => 'index')

        end
end
