require 'rails_helper'

RSpec.describe 'movement assessment one page' do 
    before :each do 
        visit '/'

        @email = 'test@test.com'

        fill_in :email, with: @email

        click_on "Submit"
    end 

    it 'is the movement one page' do
        expect(page).to have_content("Toe Touch")
        expect(current_path).to eq('/mvmtone/new')
    end 

    it 'has three questions and a submit button' do
        choose(id="lower_back_yes")
        choose(id="hip_shift_no")
        choose(id="upper_back_no")

        click_on "Next Assessment"

        expect(current_path).to eq('/mvmttwo/new')

        expect(page).to have_content("Split Squat")
    end 

    it 'will not let you move forward without answering all questions' do
        choose(id="lower_back_yes")
        choose(id="hip_shift_no")

        click_on "Next Assessment"

        expect(current_path).to eq('/mvmtone/new')

        expect(page).to have_content("Toe Touch")
    end
end 