class UserMailer < ApplicationMailer

  def results_email
    @user = params[:user] 
    @toe_touch_one = params[:toe_touch_one]
    @toe_touch_two = params[:toe_touch_two]
    @split_squat_one = params[:split_squat_one]
    @split_squat_two = params[:split_squat_two]
    @overhead_one = params[:overhead_one]
    @overhead_two = params[:overhead_two]
    mail(to: @user.email, subject: "Your BTE Movement App Results")
  end
end