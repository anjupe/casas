module Api
  module V1
    class UsersController < ApplicationController
      def index
        @user = User.order('created_at DESC')

        render json: @user
      end

      def show
        @user = Vivienda.where(:user => params[:id])

        if @user
          render json: @user
        else
          render json: {user: "No encontrada"}, status: :not_found
        end
      end

      def create
        @user = User.new(user_params)

        if @user.save
          render status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:Nombre, :Telefono, :Email)
      end


    end
  end
end