class MvmtfiveController < ApplicationController
    before_action :require_email

    def new 
        @movement = Movement.last 
    end

    def create 
        movement = @user.movements.new(name: "Overhead Reach", side: 1, qone: params[:sixty_l], qtwo: params[:hundred_twenty_l], qthree: params[:hundred_eighty_l])
        if movement.save
            redirect_to "/results" 
        else 
            redirect_to "/mvmtfive" 
            flash[:error] = movement.errors.full_messages
        end 
    end
    
    private
    def require_email
        if !current_user
            flash[:error] = "Sorry, you must input your email first" 
            redirect_to "/"
        end 
    end

end 