class OtherDiagnosesController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @other_diagnosis = @item.other_diagnoses.build(other_diagnosis_params)
    respond_to do |format|
      if @other_diagnosis.save
        format.js { render :index }
      else
        format.html { redirect_to item_path(@item), notice: '診断できませんでした...' }
      end
    end
  end

  private

  def other_diagnosis_params
    params.require(:other_diagnosis).permit(:item_id, :one_answer, :two_answer, :three_answer, :four_answer, :five_answer)
  end
end
