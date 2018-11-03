class EventqualificationController < ApplicationController
    def create
        eventqualification = Eventqualification.create(eventqualification_params)
        render json:eventqualification,status: :ok
    end

    def index
        eventqualification = Eventqualification.all
        render json:eventqualification,status: :ok
    end

    def index_filter
        eventqualification = Eventqualification.where codUsuario:params[:codUsuario]
        render json:eventqualification,status: :ok
    end

    def update
        eventqualification = Eventqualification.find(params[:id])
        eventqualification.update(eventqualification_params_update)
        render json:eventqualification,status: :ok
    end

     private
     
     def eventqualification_params
        params.permit(:codEvento, :codUsuario, :Calificacion, :Comentario)
     end

     def eventqualification_params_update
        params.permit(:codEvento,:codUsuarios, :Comentario)
     end
end
