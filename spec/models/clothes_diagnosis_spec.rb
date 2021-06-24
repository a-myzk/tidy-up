require 'rails_helper'

RSpec.describe ClothesDiagnosis, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:item) { FactoryBot.create(:item, user: user) }
  describe '診断結果のテスト' do
    context '各項目のラジオボタンがひとつでも未選択の場合' do
      it 'バリデーションに引っかかる' do
        clothes_diagnosis = ClothesDiagnosis.new(one_answer: 1, two_answer: 1, three_answer: 1, four_answer: 1, five_answer: nil)
        expect(clothes_diagnosis).to be_invalid
      end
    end
    context '各項目のラジオボタンにすべてチェックされている場合' do
      it '診断結果が表示される' do
        item = FactoryBot.create(:item, user: user)
        clothes_diagnosis = ClothesDiagnosis.new(one_answer: 0, two_answer: 0, three_answer: 0, four_answer: 0, five_answer: 0)
        expect(clothes_diagnosis).to be_valid
      end
    end
  end
end
