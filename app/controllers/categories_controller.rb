class CategoriesController < ApplicationController
  def show
    @category = Category.find params[:id]
    @groups = @category.groups
  end

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all

    respond_to do |format|
      format.html 
      format.json { render json: @categories }
    end
  end

end
