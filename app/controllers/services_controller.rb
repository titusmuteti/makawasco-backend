class ServicesController < ApplicationController
    def index
        services = Service.all
        render json: services, include: [:clients], status: :ok
    end

    def show
        service = Service.find(params[:id])
        render json: service, include: [:services], status: :ok
    end

    def create
        service = Service.create!(employee_params)
        render json: service, include: [:services], status: :created
    end

    def update
        service = Service.find(params[:id])
        service.update!(service_params)
        render json: service, status: :ok
    end

    def destroy
        service = Service.find(params[:id])
        service.destroy
        render json: {message: "Service deleted"}, status: :ok
    end

    private

    def service_params
        params.permit(:client_id, :premise_id, :created_on, :resolved_on, :remarks)
    end
end
