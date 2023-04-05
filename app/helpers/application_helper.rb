module ApplicationHelper

    def toe_touch_movements
        if @user.toe_touch_question_one == 'no'
            @toe_touch_one = "https://www.youtube.com/embed/-a5d7FPkuqI"
            @toe_touch_one_short = "https://youtu.be/HVYHlKohTAM"
            @toe_touch_one_long = "https://youtu.be/-a5d7FPkuqI"
            @toe_touch_two = "https://www.youtube.com/embed/3MZVfb82Vzk"
            @toe_touch_two_short = "https://youtu.be/KnfWzOiq20g"
            @toe_touch_two_long = "https://youtu.be/3MZVfb82Vzk"
        elsif @user.toe_touch_question_one == 'yes' && @user.toe_touch_question_two == 'no'
            @toe_touch_one = "https://www.youtube.com/embed/7GkCqNRGcNs"
            @toe_touch_one_short = "https://youtu.be/X41a8V0MjVs"
            @toe_touch_one_long = "https://youtu.be/7GkCqNRGcNs"
            @toe_touch_two = "https://www.youtube.com/embed/PcMzCqP7Wh4"
            @toe_touch_two_short = "https://youtu.be/CD5A15-N2fo"
            @toe_touch_two_long = "https://youtu.be/PcMzCqP7Wh4"
        elsif @user.toe_touch_question_one == 'yes' && @user.toe_touch_question_two == 'yes' && @user.toe_touch_question_three == 'no'
            @toe_touch_one = "https://www.youtube.com/embed/-WUK091r37Y"
            @toe_touch_one_short = "https://youtu.be/MUe48st6tgM"
            @toe_touch_one_long = "https://youtu.be/-WUK091r37Y"
            @toe_touch_two = "https://www.youtube.com/embed/9VDPKmqtApM"
            @toe_touch_two_short = "https://youtu.be/20J4lRe3Igw"
            @toe_touch_two_long = "https://youtu.be/9VDPKmqtApM"
        else
            @toe_touch_one = nil 
            @toe_touch_two = nil 
        end 
    end
    
    def split_squat_movements 
        if @user.split_squat_question_one_l == 'no' || @user.split_squat_question_one_r == 'no'
            @split_squat_one = "https://www.youtube.com/embed/d3A7LztdgLk"
            @split_squat_two = "https://www.youtube.com/embed/jXqndeBAI1Q"
        elsif @user.split_squat_question_two_l == 'no' || @user.split_squat_question_two_r == 'no'
            @split_squat_one = "https://www.youtube.com/embed/tal2pK5qBXA"
            @split_squat_two = "https://www.youtube.com/embed/4iFgJwmMXD0"
        elsif @user.split_squat_question_three_l == 'no' || @user.split_squat_question_three_r == 'no'
            @split_squat_one = "https://www.youtube.com/embed/-ocBo3VneWI"
            @split_squat_two = "https://www.youtube.com/embed/aw4EKkxNPlw"
        else 
            @split_squat_one = nil 
            @split_squat_two = nil 
        end 
    end 

    def overhead_movements
        if @user.overhead_question_one_l == 'no' || @user.overhead_question_one_r == 'no'
            @overhead_one = "https://www.youtube.com/embed/jv_iBdsPkSY"
            @overhead_two = "https://www.youtube.com/embed/HrmIeCBwIrQ"
        elsif @user.overhead_question_two_l == 'no' || @user.overhead_question_two_r == 'no'
            @overhead_one = "https://www.youtube.com/embed/bzInUVNZM5o"
            @overhead_two = "https://www.youtube.com/embed/D0NncpFuQLo"
        elsif @user.overhead_question_three_l == 'no' || @user.overhead_question_three_r == 'no'
            @overhead_one = "https://www.youtube.com/embed/nUbUn6DyDnU"
            @overhead_two = "https://www.youtube.com/embed/5Y7zb2faTUU"
        else 
            @overhead_one = nil 
            @overhead_two = nil 
        end
    end 
end
