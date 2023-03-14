class MvmtoneController < ApplicationController
    before_action :require_email

    def new
    end 

    def create 
        movement = @user.movements.new(name: "Toe Touch", side: 2, qone: params[:lower_back], qtwo: params[:hip_shift], qthree: params[:upper_back])
        if movement.save
            redirect_to "/mvmttwo" 
        else 
            redirect_to "/mvmtone" 
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