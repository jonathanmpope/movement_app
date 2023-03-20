class MvmtfiveController < ApplicationController
    before_action :require_email


    def new 
        @movement = Movement.last 
    end
    
    private
    def require_email
        if !current_user
            flash[:error] = "Sorry, you must input your email first" 
            redirect_to "/"
        end 
    end

end 