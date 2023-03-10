class User < ApplicationRecord
    has_many :movements 

    validates_presence_of :email
end 