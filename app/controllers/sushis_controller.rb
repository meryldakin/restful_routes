class SushisController < ApplicationController
    
    def index
        @sushis = Sushi.all
    end
    
    def show
        current_sushi
    end

    def new
        @sushi = Sushi.new
    end

    def create
        @sushi = Sushi.create(sushi_params)
        redirect_to sushi_path(@sushi)
    end

    def edit
        current_sushi
    end

    def update
        current_sushi
        @sushi.update(sushi_params)
        redirect_to sushi_path(@sushi)
    end

    def destroy
        current_sushi
        @sushi.destroy
        redirect_to sushis_path
    end

    def home 
    end

    private

    def sushi_params
        params.require(:sushi).permit(:name)
    end

    def current_sushi
        @sushi = Sushi.find_by(id: params[:id])
    end
end
