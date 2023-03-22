class User < ApplicationRecord
    has_many :movements 

    validates_presence_of :email

    def toe_touch_question_one
        movements.where(name: 'Toe Touch').order(:created_at).first.qone
    end 

    def toe_touch_question_two
        movements.where(name: 'Toe Touch').order(:created_at).first.qtwo
    end 
end 