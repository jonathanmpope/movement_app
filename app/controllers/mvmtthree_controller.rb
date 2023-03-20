class MvmtthreeController < ApplicationController
    before_action :require_email

    def new
        @movement = Movement.last 
    end 

    def create 
        movement = @user.movements.new(name: "Split Squat", side: 1, qone: params[:thighs_hips_l], qtwo: params[:com_l], qthree: params[:level_l])
        if movement.save
            redirect_to "/mvmtfour/new" 
        else 
            redirect_to "/mvmtthree/new" 
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