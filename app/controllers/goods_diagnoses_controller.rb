class GoodsDiagnosesController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @goods_diagnosis = @item.goods_diagnoses.build(goods_diagnosis_params)
    respond_to do |format|
      if @goods_diagnosis.save
        format.js { render :index }
      else
        format.html { redirect_to item_path(@item), notice: '診断できませんでした...' }
      end
    end
  end

  private

  def goods_diagnosis_params
    params.require(:goods_diagnosis).permit(:item_id, :one_answer, :two_answer, :three_answer, :four_answer, :five_answer)
  end
end
