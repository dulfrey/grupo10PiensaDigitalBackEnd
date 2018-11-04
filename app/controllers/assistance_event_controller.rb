class AssistanceEventController < ApplicationController
    def create
        assistanceevent = AssistanceEvent.create(event_params)
        render json:assistanceevent,status: :ok
    end
    
    def index
        @events = AssistanceEvent.all
        render json: @events , status: :ok
    end
    
    def listado_asistencia
        usersassistent = AssistanceEvent.where event_id:params[:event_id] 
        users = Array.new
        usersassistent.each do |user|
            usertmp = User.find(user.id)
            users << usertmp 
        end
        render json:users,status: :ok
    end

    def ListadoAsistenciaEvento
        usersassistent = AssistanceEvent.where event_id:params[:event_id] 
        users = Array.new
        usersassistent.each do |user|
            usertmp = User.find(user.id)
            users << usertmp 
        end
        render json:users,status: :ok
    end

    def destroy
        @assistanceevent = AssistanceEvent.find(params[:id])
        @assistanceevent.destroy
        render "deleted"
      end

    private     
    def event_params
        params.permit(:event_id, :user_id)
    end
end
