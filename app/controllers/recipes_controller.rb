class RecipesController < ApplicationController
    def index
        @rec = Recipe.all 
    end

    def show 
        @rec = Recipe.find(params[:id])
    end

    def new 
        @rec = Recipe.new
    end

    def create
        @rec = Recipe.new(recipe_params)
        @rec.chef = Chef.first
        if @rec.save
            flash[:success] = "recipe save successfully"
            redirect_to recipe_path(@rec)
    
        else 
            render 'new'
        end  
    end 

    def edit
        @rec = Recipe.find(params[:id])
    end

    def update
        @rec = Recipe.find(params[:id])
        if @rec.update(recipe_params)
            flash[:success] = "recipe is updated successfully"
            redirect_to recipe_path(@rec)

        else
            render 'edit'
        end 
    end

    def destroy
        Recipe.find(params[:id]).destroy
        flash[:success] = "deleted sucessfully"

    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :description)
        redirect_to recipes_path
    end
end 

