module Api
  module V1
    class ViviendasController < ApplicationController
      def index
        @viviendas = Vivienda.all

        render json: @viviendas
      end

      def show
        @vivienda = Vivienda.find(params[:id])

        if @vivienda
          render json: @vivienda
        else
          render json: {vivienda: "No encontrada"}, status: :not_found
        end
      end

      def create
        @user = User.find(params[:id_user])

        if @user
          @vivienda= @user.viviendas.new(vivienda_params)

          if @vivienda.save
            render json: @vivienda, status: :created
          else
            render json: @vivienda.errors, status: :unprocessable_entity
          end

        else
          render json: {vivienda: "Usuario No registrado"}, status: :not_found
        end
      end

      def update
        @vivienda = Vivienda.find(params[:id])

        if @vivienda
          @vivienda.update(vivienda_params)
        else
          render json: {vivienda: "Vivienda no existe"}, status: :not_found
        end
      end

      def destroy
        @vivienda = Vivienda.find(params[:id])

        if @vivienda
          @vivienda.destroy
        else
          render json: {vivienda: "No encontrada"}, status: :not_found
        end
      end

      private

      def vivienda_params
        params.require(:vivienda).permit(:Referencia, :Titulo, :Localidad, :Provincia, :Precio, :Superficie, :Habitaciones, :Garage, :Terraza, :Trastero, :Piscina, :Ascensor, :Jardin, :Certificacion, :Imagen, :Novedad)
      end

    end
  end
end