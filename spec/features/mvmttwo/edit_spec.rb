require 'rails_helper'

RSpec.describe 'movement edit assessment one page' do 
    before :each do 
        visit '/'

        @email = 'test@test.com'

        fill_in :email, with: @email

        click_on "Submit"
    end 

    it 'has a back button after ' do
        user = User.create!(email: 'test@test.com')
       
        movement = user.movements.create!(name: "Split Squat", side: 1, qone: 'yes', qtwo: 'yes', qthree: 'no')

        visit "/mvmttwo/#{movement.id}/edit"

        choose(id="movement_qone_no")

        click_on "Update Assessment"

        expect(current_path).to eq('/mvmtthree/new')
    end 

end 