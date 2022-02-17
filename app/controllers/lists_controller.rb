class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @lists = List.find(list_params)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
