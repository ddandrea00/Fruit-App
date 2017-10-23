class FruitsController < ApplicationController
       def index
        @fruits = current_user.fruits.all
        end

        def new
          @fruit = current_user.fruits.new
        end


        def create
          @fruit = current_user.fruits.create!(fruit_params)
          redirect_to fruits_path(@fruit)
        end


        def show
          @fruit = Fruit.find(params[:id])
          @appointments = current_user.appointments.all
          @appointment = current_user.appointments.new
        end


        def edit
          @fruit = Fruit.find(params[:id])
        end


        def update
          @fruit = Fruit.find(params[:id])
          @fruit.update(fruit_params)
          redirect_to fruits_path(@fruit)
        end


        def destroy
          @fruit = Fruit.find(params[:id])
          @fruit.destroy
          redirect_to fruits_path
        end

      def fruit_params
      params.require(:fruit).permit(:name, :phone, :email, :image_url, :location, :description)
      end
end
