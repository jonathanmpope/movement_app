require 'rails_helper'

RSpec.describe Movement, type: :model do
	describe 'relationships' do
        it { should belong_to :user }
    end 

    describe 'validations' do
         it { should validate_presence_of :name }
         it { should validate_presence_of :side }
         it { should validate_presence_of :qone }
         it { should validate_presence_of :qtwo }
         it { should validate_presence_of :qthree }
	end 
end