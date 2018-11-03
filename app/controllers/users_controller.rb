class UsersController < ApplicationController
    def create
       user = User.create(user_params) 
       render json: user, status: :ok
    end
    
    def index
        @users = User.all
    end
    
    private
    
    def user_params
        params.permit(:name,:password)
    end
end
