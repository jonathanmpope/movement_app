class ResultsController < ApplicationController
    before_action :require_email
    include ApplicationHelper

    def index 
        @movement = Movement.last
        toe_touch_movements
        split_squat_movements
    end 

    private
    def require_email
        if !current_user
            flash[:error] = "Sorry, you must input your email first" 
            redirect_to "/"
        end 
    end
end 