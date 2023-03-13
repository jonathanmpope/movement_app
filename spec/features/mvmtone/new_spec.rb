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
    end 


end 