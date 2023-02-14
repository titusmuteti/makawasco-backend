class ClientsController < ApplicationController
        # skip_before_action :authorize, only: :create
        rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

        def index
            clients = Client.all
            render json: clients, include: [:service, :bills],  status: :ok
        end
    
        def show
            client = Client.find_by_id(session[:client_id])
            if client
                render json: client, include: [:service, :bills, :employees, premises], status: :ok
            else
                render json: {error: "You must be logged in to access this content"}, status: :unauthorized
            end
    
        end
    
        def create
            client = Client.create!(user_params)
            if client.save
            # UserNotifierMailer.send_signup_email(@user).deliver
                session[:client_id] = client.id
                render json: client, status: :created
            else
                render :action => 'new'
            end
    
        end
    
        def update
            client = Client.find_by(params[:id])
            client.update!(user_params)
            render json: client , status: :ok
        end
    
        def destroy
            client = Client.find(params[:id])
            client.destroy
            render json: {message: "User deleted"}, status: :ok
        end
    
        private
    
        def client_params
            params.permit(:firstname, :lastname, :email, :password, :password_confirmation, :phone_number, :premise_id)
        end
    
        def record_invalid
            render json: {error: "Invalid user"}, status: :unprocessable_entity
        end
    
end
