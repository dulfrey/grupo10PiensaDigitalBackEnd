class EventsController < ApplicationController
    def create
        event = Event.create(event_params)
        render json:event,status: :ok
    end
    def index
        @events = Event.all
        render json: @events , status: :ok
    end
    
    private     
    def event_params
        params.permit(:title, :description, :gauging, :eventtype_id, :date, :address)
    end
end
