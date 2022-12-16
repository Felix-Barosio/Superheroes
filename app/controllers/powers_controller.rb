class PowersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /powers
    def index
        render json: Power.all
    end

    # GET /powers/:id
    def show
        power = find_power
        render json: power, status: :ok, serializer: ShowPowerHeroSerializer
    end

    # POST /powers
    def create
        power = Power.create!(power_params)
        render json: power, status: :created
    end

    # PATCH /powers/:id
    def update
        power = find_power
        power.update!(power_params)
        render json: power, status: :ok
    end

    # DELETE /powers/:id
    def destroy
        power = find_power
        power.destroy
        render json: { message: "Power Deleted"}, status: :not_found
    end


    private

    # finding power by id
    def find_power
        Power.find(params[:id])
    end

    # atrributes paramiters for new power
    def power_params
        params.permit(:name, :description)
    end

    # power not found response
    def render_not_found_response
        render json: { errors: "Power not found"}, status: :not_found
    end

    # render messages for invalid responses
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
