class User < ApplicationRecord
    has_many :movements 

    validates_presence_of :email

    def toe_touch_question_one
        movements.where(name: 'Toe Touch').order(:created_at).first.qone
    end 

    def toe_touch_question_two
        movements.where(name: 'Toe Touch').order(:created_at).first.qtwo
    end 

    def split_squat_question_one_l
        movements.where(name: 'Split Squat').where(side: 1).order(:created_at).first.qone
    end

    def split_squat_question_one_r
        movements.where(name: 'Split Squat').where(side: 0).order(:created_at).first.qone
    end 

    def split_squat_question_two_l
        movements.where(name: 'Split Squat').where(side: 1).order(:created_at).first.qtwo
    end 

    def split_squat_question_two_r
        movements.where(name: 'Split Squat').where(side: 0).order(:created_at).first.qtwo
    end

    def overhead_question_one_l
        movements.where(name: 'Overhead Reach').where(side: 1).order(:created_at).first.qone
    end

    def overhead_question_one_r
        movements.where(name: 'Overhead Reach').where(side: 0).order(:created_at).first.qone
    end

    def overhead_question_two_l
        movements.where(name: 'Overhead Reach').where(side: 1).order(:created_at).first.qtwo
    end

    def overhead_question_two_r
        movements.where(name: 'Overhead Reach').where(side: 0).order(:created_at).first.qtwo
    end
end 