class SushisController < ApplicationController

    def index
        @sushis = Sushi.all
    end

    def new
        @sushi = Sushi.new

    end

    def edit
        @sushi = Sushi.find_by(params[:id])
    end

    def home 
    end

    def show
        @sushi = Sushi.find_by(params[:id])
    end
end
