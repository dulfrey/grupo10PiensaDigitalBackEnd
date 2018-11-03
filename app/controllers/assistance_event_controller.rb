class AssistanceEventController < ApplicationController
    def create
        assistanceevent = AssistanceEvent.create(event_params)
        render json:assistanceevent,status: :ok
    end
    def index
        @events = AssistanceEvent.all
        render json: @events , status: :ok
    end
    
    private     
    def event_params
        params.permit(:event_id, :user_id)
    end
end
