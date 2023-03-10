require 'rails_helper'

RSpec.describe User, type: :model do
	describe 'relationships' do
        it { should_have_many :movements }
    end 

    describe 'validations' do
        it { should validate_presence_of :email }
	end 
end