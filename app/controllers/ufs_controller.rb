class UfsController < ApplicationController
    include ActionController::MimeResponds

    def show
        respond_to do |format|
            format.html { render status: :forbidden }
            format.json do
                begin
                    @date = Date.parse(params[:date])
                    if @date.month < 3
                        @uf = Uf.find_by(month: @date.month, day: @date.day)
                        render json: @uf.value
                    else
                        render json: "Invalid date"
                    end
                rescue ArgumentError
                    render json: "Invalid date"
                end
            end
        end
        
    end
end