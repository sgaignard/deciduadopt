class TreesController < ApplicationController
  before_action :find_tree, only: %i[show edit update]

  def index
    @trees = Tree.all
  end

  def show
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to tree_path(@tree)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tree.update(tree_params)
    redirect_to tree_path(@tree)
  end

  private

  def find_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :address, :description, :price_per_year, :fruits, :quantity_by_year)
  end
end
