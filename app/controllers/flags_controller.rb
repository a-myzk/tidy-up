class FlagsController < ApplicationController

  def index
    @flag = Flag.all.order(created_at: :desc)
  end

  def create
    flag = current_user.flags.create(item_id: params[:item_id])
    redirect_to items_path, notice: "フラグを登録しました"
  end

  def destroy
    flag = current_user.flags.find_by(id: params[:id]).destroy
    redirect_to items_path, notice: "フラグを解除しました"
  end

end
