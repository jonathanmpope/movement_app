class Movement < ApplicationRecord
    belongs_to :user

    validates_presence_of :name
    validates_presence_of :side
    validates_presence_of :qone
    validates_presence_of :qtwo
    validates_presence_of :qthree
end 