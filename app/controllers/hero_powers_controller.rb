class HeroPowersController < ApplicationController

    # Error handling
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # POST /hero_powers
    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power, status: :created
    end


    private

    # paramiters to create a new hero_power
    def hero_power_params
        params.permit(:strength, :hero_id, :power_id)
    end

    # render messages for invalid responses
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
