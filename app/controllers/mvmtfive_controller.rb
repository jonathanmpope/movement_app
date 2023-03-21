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
            redirect_to "/mvmtfive/new" 
            flash[:error] = movement.errors.full_messages
        end 
    end

    def edit 
        @movement = Movement.find(params[:id])
    end
    
    def update 
        movement = Movement.find(params[:id])
        movement.update(mvmtfive_params)
        redirect_to "/results" 
    end 
    
    private
    def require_email
        if !current_user
            flash[:error] = "Sorry, you must input your email first" 
            redirect_to "/"
        end 
    end

    def mvmtfive_params
        params.require(:movement).permit(:qone, :qtwo, :qthree)
    end
end 