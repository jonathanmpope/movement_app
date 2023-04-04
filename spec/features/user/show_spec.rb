require 'rails_helper'

RSpec.describe 'about page' do
    
    it 'has videos explaining things' do
        visit '/about'

        expect(page).to have_content("Purpose of Primary Movements")
        expect(page).to have_content("Purpose of Secondary Movements")
        expect(page).to have_content("Foot Interaction")
    end

end 
