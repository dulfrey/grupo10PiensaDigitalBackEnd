class EventqualificationController < ApplicationController
    def create
        eventqualification = Eventqualification.create(eventqualification_params)
        render json:eventqualification,status: :ok
    end

    def index
        eventqualification = Eventqualification.all
        render json:eventqualification,status: :ok
    end

    def index_filter
        users = User.where username:params[:username]
        render json:users,status: :ok
    end

    def update
        user = User.find(params[:id])
        user.update(user_params_update)
        render json:user,status: :ok
    end

     private
     
     def eventqualification_params
        params.permit(:username, :password)
     end

     def user_params_update
        params.permit(:username)
     end
end
