class BookDiagnosesController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    @book_diagnosis = @item.book_diagnoses.build(book_diagnosis_params)
    respond_to do |format|
      if @book_diagnosis.save
        format.js { render :index }
      else
        format.html { redirect_to item_path(@item), notice: '診断できませんでした...' }
      end
    end
  end

  private

  def book_diagnosis_params
    params.require(:book_diagnosis).permit(:item_id, :one_answer, :two_answer, :three_answer, :four_answer, :five_answer)
  end
end
