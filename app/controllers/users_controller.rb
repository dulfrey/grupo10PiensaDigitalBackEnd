class UsersController < ApplicationController
    def create
       user = User.create(user_params) 
       render json: user, status: :ok
    end
    
    def index
        @users = User.all
        render json: @users, status: :ok
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
    
    def user_params
        params.permit(:name,:password)
    end
end
