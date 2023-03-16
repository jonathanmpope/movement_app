RSpec.describe 'movement assessment two page' do 
    before :each do 
        visit '/'

        @email = 'test@test.com'

        fill_in :email, with: @email
        click_on "Submit"

        choose(id="lower_back_yes")
        choose(id="hip_shift_no")
        choose(id="upper_back_no")

        click_on "Next Assessment"
    end 

    it 'is the movement two page' do
        expect(page).to have_content("Split Squat")
        expect(current_path).to eq('/mvmttwo')
    end

end 