class UserController < ApplicationController 

    def new
    end 

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id 
            redirect_to "/mvmtone/new" 
        else 
            redirect_to "/" 
            flash[:error] = user.errors.full_messages
        end 
    end 

    def show 
    end 

    private 

    def user_params 
        params.permit(:email)
    end 

end 