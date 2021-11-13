class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.delete
    # Ask why the hell ^ this needs .delete but movies needs .destroy
    # What the hell Ruby
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :description, :photo)
  end
end
