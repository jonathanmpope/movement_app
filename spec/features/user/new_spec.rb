require 'rails_helper'

RSpec.describe 'the landing page' do 
    
    it 'is the landing page where you can get started' do
        visit '/'

        expect(page).to have_content("BTE Movement Screen App")
    end 

    it 'allows you to input an email and go to the next step' do
        visit '/'

        @email = 'test@test.com'
        fill_in :email, with: @email

        click_on "Submit"

        expect(page).to have_content("Toe Touch")
        expect(current_path).to eq('/mvmtone/new')
    end 

    it 'will not allow you to move to the next step without an email' do
        visit '/'

        click_on "Submit"

        expect(current_path).to eq('/')
    end 
end 