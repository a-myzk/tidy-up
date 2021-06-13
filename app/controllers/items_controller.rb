class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: "登録しました！"
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :comment)
  end

end
