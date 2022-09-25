class RacoonsController < ApplicationController
    def index
        racoon = Racoon.all
        render json: racoon
    end

    def create
        racoon = Racoon.create(racoon_params)
        if racoon.valid?
            render json: racoon
        else
            render json: racoon.errors, status: 422
        end
    end

    def update
        racoon = Racoon.find(params[:id])
        racoon.update(racoon_params)
        if racoon.valid?
            render json: racoon
        else
            render json: racoon.errors
        end
    end
    
    private
    def racoon_params
        params.require(:racoon).permit(:name, :age, :hobbies, :dislikes, :img)
    end
end
