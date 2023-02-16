class PremisesController < ApplicationController
    def index
        premises = Premise.all
        render json: premises, include: [:clients, :services], status: :ok
    end

    def show
        premise = Premise.find(params[:id])
        render json: premise, include: [:services], status: :ok
    end

    def create
        premise = Premise.create!(employee_params)
        render json: premise, include: [:services], status: :created
    end

    def update
        premise = Premise.find(params[:id])
        premise.update!(premise_params)
        render json: premise, status: :ok
    end

    def destroy
        premise = Premise.find(params[:id])
        Premise.destroy
        render json: {message: "Premise deleted"}, status: :ok
    end

    private

    def premise_params
        params.permit(:address, :town, :owners_firstname, :owners_lastname)
    end
end
