class EventsController < ApplicationController
    def create
        event = Event.create(event_params)
        render json:event,status: :ok
    end
    def index
        @events = Event.all
        render json: @events , status: :ok
    end
    
    def to_list_asist
        event = Event.find(params[:id])
        assistants = event.assistanceEvents.map{|assistant| assistant.user}
        render json: assistants, status: :ok
    end
    def to_list_responsibles
        event = Event.find(params[:id])
        responsibles = event.responsableEvents.map{|responsible| responsible.user}
        render json: responsibles, status: :ok
    end
    private     
    def event_params
        params.permit(:title, :description, :gauging, :eventtype_id, :date, :address)
    end
end
