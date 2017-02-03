require 'pry'
module Api::V1

  class BeersController < ApplicationController
    def index
      @beers = Beer.all
      render json: @beers
    end

    def show
      @beer = Beer.find(params[:id])
      render json: @beer
    end

    def alcohol
      @beers = Beer.all.where('alcohol <= ?', (params[:upper].to_f / 10).to_s)
      render json: @beers
      Beer.all.where('alcohol <= 2.0')
    end

    def create
      @beer = Beer.new(beer_params)
      @beer.alcohol /= 10
      @beer.save
      @style = Style.find_or_create_by(name: params[:style])
      @style << @beer
    end

    private

    def beer_params
      params.permit(:name, :ibu, :alcohol)
    end

  end

end
