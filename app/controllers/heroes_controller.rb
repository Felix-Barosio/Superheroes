class HeroesController < ApplicationController

    def index
        render json: Hero.all
    end

    def show
        hero = find_hero
        render json: hero, status: :ok, serializer: ShowHeroPowerSerializer
    end


    private

    def find_hero
        Hero.find(params[:id])
    end

end
