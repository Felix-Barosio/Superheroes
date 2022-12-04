class PowersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # GET /powers
    def index
        render json: Power.all
    end

    # GET /powers/:id
    def show
        power = find_power
        render json: power, status: :ok, each_serializer: PowerSerializer
    end

    private

    # finding power by id
    def find_power
        Power.find(params[:id])
    end

    # power not found response
    def render_not_found_response
        render json: { errors: "Power not found"}, status: :not_found
    end

end
