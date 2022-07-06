class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists
    else
      render :new
    end
  end

  def destroy
    @list = List.delete(list_params)
    redirect_to lists_path
  end

  private

  def set_list
    @lists = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
