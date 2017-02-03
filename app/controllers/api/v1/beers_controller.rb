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
      binding.pry
      @beers = Beer.all.where('alcohol <= ?', (params[:upper].to_f / 10).to_s)
      render json: @beers
    end


  end

end
