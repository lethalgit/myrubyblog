class CategoriesController < ApplicationController
  # before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id]);
    @posts = @category.posts
  end

  def edit
    @category = Category.find(params[:id]);
  end

  def new
    @category = Category.new;
  end

  def update
    @category = Category.find(params[:id]);
    if @category.update_attributes(category_params)
      redirect_to category_path, :notice => "Your category has been updated"
    else
      render "edit"
    end
  end

  def create
    @category = Category.new(category_params);
    if @category.save
      redirect_to @category, :notice => "New category has been created."
    else
      render "new"
    end
  end

  def destroy
    @category = Category.find(params[:id]);
    @category.destroy;
    redirect_to categories_path, :notice => "Your category has been deleted.";
  end

  private

  def category_params
    params.require(:category).permit(:id, :name);
  end
end
