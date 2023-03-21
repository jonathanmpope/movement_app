class ResultsController < ApplicationController

    def index 
        @movement = Movement.last 
    end 
end 