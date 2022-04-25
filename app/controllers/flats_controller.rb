class FlatsController < ApplicationController
    def index
        @flats = Flat.all
    end
    def new
        @flat = Flat.new
    end

    # def creat
    #     @flat = flat.creat()
    # end
    def create
        @flat = Flat.new(flat_params)
        @flat.save
    
        # no need for app/views/restaurants/create.html.erb
        redirect_to flats_path(@flat)
    end
    
    private
    
    def flat_params
        params.require(:flat).permit(:id)
    end
end
