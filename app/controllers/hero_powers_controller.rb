class HeroPowersController < ApplicationController

    # Error handling
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /hero_powers
    def index
        render json: HeroPower.all
    end

    # GET /hero_powers/:id
    def show
        hero_power = find_hero_power
        render json: hero_power
    end

    # POST /hero_powers
    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power, status: :created
    end

    # PATCH /hero_powers/:id
    def update
        hero_power = find_hero_power
        hero_power.update!(hero_power_params)
        render json: hero_power, status: :ok
    end

    # DELETE /hero_powers/:id
    def destroy
        hero_power = find_hero_power
        hero_power.destroy
        render json: { message: 'Hero Power has been deleted' }, status: :ok
    end


    private

    # Finding hero_power by id
    def find_hero_power
        HeroPower.find(params[:id])
    end

    # paramiters to create a new hero_power
    def hero_power_params
        params.permit(:strength, :hero_id, :power_id)
    end

    # hero_power not found response
    def render_not_found_response
        render json: { errors: "Hero Power not found"}, status: :not_found
    end

    # render messages for invalid responses
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
