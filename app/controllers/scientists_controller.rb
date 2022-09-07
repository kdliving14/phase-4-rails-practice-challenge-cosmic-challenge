class ScientistsController < ApplicationController

    def index
        render json:  Scientist.all 
    end

    def show
        scientist = Scientist.find(params[:id])
        render json: scientist, serializer: ScientistShowSerializer
    end

    def create
        scientist = Scientist.create!(s_params)
        render json: scientist, status: 201
    end

    def update
        scientist = Scientist.find(params[:id])
        scientist.update!(s_params)
        render json: scientist, status: :accepted
    end

    def destroy
        scientist = Scientist.find(params[:id])
        scientist.destroy
        head :no_content
    end

    private

    def s_params
        params.permit(:name, :field_of_study, :avatar)
    end
end
