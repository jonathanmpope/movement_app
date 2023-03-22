module ApplicationHelper

    def toe_touch_movements
        if @user.toe_touch_question_one == 'no'
            @toe_touch_one = "https://www.youtube.com/embed/uLojLnaxHXI"
            @toe_touch_two = "https://www.youtube.com/embed/YLYXMKYDfiA"
        elsif @user.toe_touch_question_one == 'yes' && @user.toe_touch_question_two == 'no'
            @toe_touch_one = "https://www.youtube.com/embed/P6esvZMrRe4"
            @toe_touch_two = "https://www.youtube.com/embed/J81Qhs2SX4M"
        else 
            @toe_touch_one = "https://www.youtube.com/embed//wi6Zu--YopU"
            @toe_touch_two = "https://www.youtube.com/embed/rwjyzb7PYUQ"
        end 
    end 
end
