class MvmtfourController < ApplicationController
    before_action :require_email

    def new
        @movement = Movement.last 
    end 

    def create 
        movement = @user.movements.new(name: "Overhead Reach", side: 0, qone: params[:thighs_hips_l], qtwo: params[:com_l], qthree: params[:level_l])
        if movement.save
            redirect_to "/mvmtfive" 
        else 
            redirect_to "/mvmtfour" 
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