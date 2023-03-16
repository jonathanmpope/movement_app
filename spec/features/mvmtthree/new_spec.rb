RSpec.describe 'movement assessment three page' do 
    before :each do 
        visit '/'

        @email = 'test@test.com'

        fill_in :email, with: @email
        click_on "Submit"

        choose(id="lower_back_yes")
        choose(id="hip_shift_no")
        choose(id="upper_back_no")

        click_on "Next Assessment"

        choose(id="thighs_hips_r_yes")
        choose(id="com_r_no")
        choose(id="level_r_yes")

        click_on "Next Assessment"
    end 

    it 'is the movement three page' do
        expect(page).to have_content("Split Squat")
        expect(current_path).to eq('/mvmtthree')
    end

    it 'has three questions and a submit button' do
        choose(id="thighs_hips_l_yes")
        choose(id="com_l_yes")
        choose(id="level_l_no")

        click_on "Next Assessment"

        expect(current_path).to eq('/mvmtfour')
    end 

    it 'will not allow you to move forward without filling out all questions' do
        choose(id="thighs_hips_l_yes")
        choose(id="com_l_yes")

        click_on "Next Assessment"

        expect(current_path).to eq('/mvmtthree')
    end 
end 