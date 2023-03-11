require 'rails_helper'

RSpec.describe 'the landing page' do 
    
    it 'is the landing page where you can get started' do
        visit '/'

        expect(page).to have_content("BTE Movement Screen App")
    end 

    xit 'allows you to input an email and go to the next step' do
        visit '/'
        @email = 'test@test.com'
        fill_in :email, with: @email

    end 

end 