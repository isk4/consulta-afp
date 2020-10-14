class RequestsController < ApplicationController
    include ActionController::MimeResponds

    def show
        respond_to do |format|
            format.html { render status: :forbidden }
            format.json { render json: Request.where(client: params[:name]).count }
        end
    end
end