require 'rails_helper'
RSpec.describe 'itemモデル機能', type: :model do

  describe 'バリデーションのテスト' do
    context 'モノの名前が空の場合' do
      it 'バリデーションにひっかかる' do
        item = Item.new(name: '', comment: '失敗テスト', updated_at: '2021-01-01 00:00:00', category: 0, status: 0)
        expect(item).not_to be_valid
      end
    end
    context 'モノの名前が入力されている場合' do
      it 'モノが登録できる' do
        user = FactoryBot.create(:user)
        item = Item.new(name: '成功テスト', comment: '成功テスト', updated_at: '2021-01-01 00:00:00', category: 0, status: 0, user: user)
        expect(item).to be_valid
      end
    end
  end
end
