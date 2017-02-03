module Api::V1

  class StylesController < ApplicationController
    def index
      @styles = Style.all.sort()
      render json: @styles
    end

    def show
      @style = Style.find(params[:id])
      render json: @style
    end

    def method
      #code
    end
    
  end

end
