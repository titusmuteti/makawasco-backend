class ClientsController < ApplicationController
        # skip_before_action :authorize, only: :create
        rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

        def index
            clients = Client.all
            render json: clients, include: [:bills, :employees],  status: :ok
        end
    
        def show
            client = Client.find_by_id(session[:client_id])
            if client
                render json: client, include: [:bills, :employees], status: :ok
            else
                render json: {error: "You must be logged in to access this content"}, status: :unauthorized
            end
    
        end
    
        def create
            byebug
            client = Client.create(client_params)
            if client.valid?
                byebug
                session[:client_id] = client.id
                render json: client, status: :created
            else
                render json: { errors: client.errors.full_messages }, status: :unprocessable_entity
            end
    
        end
    
        def update
            client = Client.find_by(params[:id])
            client.update!(client_params)
            render json: client , status: :ok
        end
    
        def destroy
            client = Client.find(params[:id])
            client.destroy
            render json: {message: "User deleted"}, status: :ok
        end
    
        private
    
        def client_params
            params.permit(:firstname, :lastname, :email, :phone_number, :password, :password_confirmation)
        end
    
        def record_invalid
            render json: {error: "Invalid user"}, status: :unprocessable_entity
        end
    
end
