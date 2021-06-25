class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :access_reject, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    @items = current_user.items.order(created_at: :DESC)
    @chart = current_user.items.group(:category).count
    @user = current_user
  end

  def show
    @flag = current_user.flags.find_by(item_id: @item.id)
    if @item.category  == "衣料品"
      @clothes_diagnoses = @item.clothes_diagnoses.order(created_at: :desc).limit(1)
      @clothes_diagnosis = @item.clothes_diagnoses.build
    elsif @item.category  == "日用品"
      @goods_diagnoses = @item.goods_diagnoses.order(created_at: :desc).limit(1)
      @goods_diagnosis = @item.goods_diagnoses.build
    elsif @item.category  == "書籍"
      @book_diagnoses = @item.book_diagnoses.order(created_at: :desc).limit(1)
      @book_diagnosis = @item.book_diagnoses.build
    elsif @item.category  == "その他"
      @other_diagnoses = @item.other_diagnoses.order(created_at: :desc).limit(1)
      @other_diagnosis = @item.other_diagnoses.build
    else
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to @item, notice: "登録しました！"
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
      :category,
      :status
    )
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def access_reject
    redirect_to user_path(current_user.id) if current_user != @item.user
  end

end
