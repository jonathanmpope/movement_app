class ResultsController < ApplicationController
    before_action :require_email
    include ApplicationHelper

    def index 
        @movement = Movement.last
        toe_touch_movements
        split_squat_movements
        overhead_movements
        UserMailer.with(user: @user, toe_touch_one_short: @toe_touch_one_short, toe_touch_one_long: @toe_touch_one_long, 
            toe_touch_two_short: @toe_touch_two_short, toe_touch_two_long: @toe_touch_two_long,
            split_squat_one_short: @split_squat_one_short, split_squat_one_long: @split_squat_one_long,
            split_squat_two_short: @split_squat_two_short, split_squat_two_long: @split_squat_two_long,
            overhead_one: @overhead_one, overhead_two: @overhead_two).results_email.deliver_later
    end 

    private
    def require_email
        if !current_user
            flash[:error] = "Sorry, you must input your email first" 
            redirect_to "/"
        end 
    end
end 