class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all.includes(:categories)
  end

  def show
  end

  def new
    @item = Item.new
    @item.categories.build
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
      redirect_to items_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: "削除しました！"
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :image,
      :image_cache,
      :comment,
      categories_attributes: [
        :id,
        :name,
        :_destroy
      ]
    )
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
