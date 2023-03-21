class MvmttwoController < ApplicationController
    before_action :require_email

    def new 
        @movement = Movement.last 
    end 

    def create 
        movement = @user.movements.new(name: "Split Squat", side: 0, qone: params[:thighs_hips_r], qtwo: params[:com_r], qthree: params[:level_r])
        if movement.save
            redirect_to "/mvmtthree/new" 
        else 
            redirect_to "/mvmttwo/new" 
            flash[:error] = movement.errors.full_messages
        end 
    end

    def edit 
        @movement = Movement.find(params[:id])
    end
    
    def update 
        movement = Movement.find(params[:id])
        movement.update(mvmttwo_params)
        redirect_to "/mvmtthree/new" 
    end 

    private
    def require_email
        if !current_user
            flash[:error] = "Sorry, you must input your email first" 
            redirect_to "/"
        end 
    end

    def mvmttwo_params
        params.require(:movement).permit(:qone, :qtwo, :qthree)
    end
end 