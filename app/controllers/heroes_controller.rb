class HeroesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /heroes
    def index
        render json: Hero.all
    end

    # GET /heroes/:id
    def show
        hero = find_hero
        render json: hero, status: :ok, serializer: ShowHeroPowerSerializer
    end

    # POST /heroes
    def create
        hero = Hero.create!(hero_params)
        render json: hero, status: :created
    end

    # PATCH /heroes/:id
    def update
        hero = find_hero
        hero.update!(hero_params)
        render json: hero, status: :ok
    end

    # DELETE /heroes/:id
    def destroy
        hero = find_hero
        hero.destroy
        render json: { message: "Hero Destroyed" }, status: :ok
    end


    private

    # Finding hero by id
    def find_hero
        Hero.find(params[:id])
    end

    # Attribute paramiters to create heroes
    def hero_params
        params.permit(:name, :super_name)
    end

    # hero not found response
    def render_not_found_response
        render json: { errors: "Hero not found"}, status: :not_found
    end

    # render messages for invalid responses
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
