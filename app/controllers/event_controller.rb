class EventController < ApplicationController
    def create
        event = Event.create(event_params)
        render json:event,status: :ok
    end

    private     
    def event_params
        params.permit(:titulo, :descripcion, :aforo, :codTipoEvento, :fecha, :direccion)
    end
end
