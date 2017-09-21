class FruitsController < ApplicationController
  def index
        @fruits = Fruit.all
      end

        def new
          @fruit = Fruit.new
        end


        def create
          @fruit = Fruit.create!(post_params.merge(user: current_user))
          redirect_to fruits_path(@fruit)
        end


        def show
          @fruit = Fruit.find(params[:id])
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
