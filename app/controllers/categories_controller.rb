class CategoriesController < ApplicationController
    def index
        @categoriess = Category.all

        render json: @categories
    end

    def create
        @category = Category.create(name: params[:name], description: params[:description])

        render json: @category
    end

    def update
        @category = Category.find(params[:id])
        @category.update(name: params[:name], description: params[:description])

        render json: "#{@category.name} ha sido actualizada!"
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy

        render json: "#{@category.name} ha sido eliminada!"
    end
end
