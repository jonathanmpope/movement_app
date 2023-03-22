module ApplicationHelper

    def toe_touch_movements
        if @user.toe_touch_question_one == 'no'
            @toe_touch_one = "https://www.youtube.com/embed/uLojLnaxHXI"
            @toe_touch_two = "https://www.youtube.com/embed/YLYXMKYDfiA"
        elsif @user.toe_touch_question_one == 'yes' && @user.toe_touch_question_two == 'no'
            @toe_touch_one = "https://www.youtube.com/embed/P6esvZMrRe4"
            @toe_touch_two = "https://www.youtube.com/embed/q-bs8kooUOg"
        else 
            @toe_touch_one = "https://www.youtube.com/embed//wi6Zu--YopU"
            @toe_touch_two = "https://www.youtube.com/embed/rwjyzb7PYUQ"
        end 
    end
    
    def split_squat_movements 
        if @user.split_squat_question_one_l == 'no' || @user.split_squat_question_one_r == 'no'
            @split_squat_one = "https://www.youtube.com/embed/P6esvZMrRe4"
            @split_squat_two = "https://www.youtube.com/embed/-v36xS5jkuA"
        elsif @user.split_squat_question_two_l == 'no' || @user.split_squat_question_two_r == 'no'
            @split_squat_one = "https://www.youtube.com/embed/pTSDOjDNBo8"
            @split_squat_two = "https://www.youtube.com/embed/J81Qhs2SX4M"
        else 
            @split_squat_one = "https://www.youtube.com/embed/P6esvZMrRe4"
            @split_squat_two = "https://www.youtube.com/embed/a-L-JmqvICI"
        end 
    end 

    def overhead_movements
        if @user.overhead_question_one_l == 'no' || @user.overhead_question_one_r == 'no'
            @overhead_one = "https://www.youtube.com/embed/vZ_YVAM3mLY"
            @overhead_two = "https://www.youtube.com/embed/29KE5vYC9jQ"
        elsif @user.overhead_question_two_l == 'no' || @user.overhead_question_two_r == 'no'
            @overhead_one = "https://www.youtube.com/embed/uw3cUWTL0T0"
            @overhead_two = "https://www.youtube.com/embed/fe_whC0HRko"
        else 
            @overhead_one = "https://www.youtube.com/embed/HtQlKXsRJHE"
            @overhead_two = "https://www.youtube.com/embed/YTAwpiX2Dsg"
        end
    end 
end
