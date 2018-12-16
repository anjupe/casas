module Api
  module V1
    class SearchsController < ApplicationController
      def index
        @viviendas = Vivienda.all

        render json: @viviendas
      end

      def show
        #@vivienda = Vivienda.find(params[:Localidad])
         @vivienda = Vivienda.where(:Localidad => params[:id])

        if @vivienda
          render json: @vivienda
        else
          render json: {vivienda: "No encontrada"}, status: :not_found
        end
      end

    end
  end
end