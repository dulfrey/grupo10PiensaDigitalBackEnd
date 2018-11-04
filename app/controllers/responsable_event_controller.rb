class ResponsableEventController < ApplicationController

    def create
        responsableevent = ResponsableEvent.create(event_params)
        render json:responsableevent,status: :ok
    end
    
    def index
        @events = ResponsableEvent.all
        render json: @events , status: :ok
    end
    
    def listado_responsable
        responsableevent = ResponsableEvent.where event_id:params[:event_id] 
        users = Array.new
        responsableevent.each do |user|
            usertmp = User.find(user.id)
            users << usertmp 
        end
        render json:users,status: :ok
    end

      def destroy
        @assistanceevent = ResponsableEvent.find(params[:id])
        @assistanceevent.destroy
        render "deleted"
      end

    private     
    def event_params
        params.permit(:event_id, :user_id)
    end

end
