class ClothesDiagnosesController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @clothes_diagnosis = @item.clothes_diagnoses.build(clothes_diagnosis_params)
    respond_to do |format|
      if @clothes_diagnosis.save
        format.js { render :index }
      else
        format.html { redirect_to item_path(@item), notice: '診断できませんでした...' }
      end
    end
  end

  private

  def clothes_diagnosis_params
    params.require(:clothes_diagnosis).permit(:item_id, :one_answer, :two_answer, :three_answer, :four_answer, :five_answer)
  end
end
