class EventtypesController < ApplicationController
    def create
        event = Eventtype.create(event_params)
        render json:event,status: :ok
    end
    def index
        @events = Eventtype.all
        render json: @events , status: :ok
    end
    def delete
        @eventtype = Eventtype.find(params[:id])
      @eventtype.destroy
      render "deleted"
    end
    def destroy
      @eventtype = Eventtype.find(params[:id])
      @eventtype.destroy
      render "deleted"
    end
    private     
    def event_params
        params.permit(:description)
    end
end
