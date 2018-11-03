class EventmemberController < ApplicationController
    def create
        eventmember =   Eventmember.create(eventmember_params)
        render json:eventmember,status: :ok
    end

    def index
        eventmember = Eventmember.all
        render json:eventmember,status: :ok
    end

    def index_filter
        eventmember = Eventmember.where event_id:params[:event_id]
        render json:eventmember,status: :ok
    end

    def update
        eventmember = Eventmember.find(params[:id])
        eventmember.update(eventmemer_params_update)
        render json:eventmember,status: :ok
    end

     private
     
     def eventmember_params
        params.permit(:event_id, :nombreintegrante)
     end

     def eventmemer_params_update
        params.permit(:event_id, :nombreintegrante)
     end
end
