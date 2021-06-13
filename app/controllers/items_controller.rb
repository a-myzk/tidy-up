class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]

  def index
    @items = Item.all
  end

  def show
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

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to items_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :comment)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
