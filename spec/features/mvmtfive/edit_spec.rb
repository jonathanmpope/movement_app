require 'rails_helper'

RSpec.describe 'movement edit assessment one page' do 
    before :each do 
        visit '/'

        @email = 'test@test.com'

        fill_in :email, with: @email

        click_on "Submit"
    end 

    it 'has a back button after ' do
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

        choose(id="thighs_hips_l_yes")
        choose(id="com_l_yes")
        choose(id="level_l_no")

        click_on "Next Assessment"

        choose(id="sixty_r_no")
        choose(id="hundred_twenty_r_yes")
        choose(id="hundred_eighty_r_no")

        click_on "Next Assessment"

        choose(id="sixty_l_yes")
        choose(id="hundred_twenty_l_yes")
        choose(id="hundred_eighty_l_no")

        click_on "Finish Assessments"

        click_on "Previous Assessment"

        choose(id="movement_qone_no")

        click_on "Update Assessment"

        expect(current_path).to eq('/results')
    end 
end 