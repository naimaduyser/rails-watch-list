class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
    @bookmark = Bookmark.new
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
    if @list.bookmarks.empty?
      @list.destroy
      redirect_to lists_path
    else
      redirect_to list_path(@list)
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :description, :photo)
  end
end
