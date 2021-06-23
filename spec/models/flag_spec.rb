require 'rails_helper'

RSpec.describe Flag, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:item) { FactoryBot.create(:item, user: user) }
  let(:flag) { Flag.create(user: user, item: item) }
  describe 'フラグ機能' do
    context 'user_idとitem_idがある場合' do
      it 'フラグを立てる' do
        expect(flag).to be_valid
      end
    end
    context 'user_idがない場合,' do
      it 'バリデーションに引っかかる' do
        user = FactoryBot.create(:user)
        flag = Flag.new(
          user_id: nil,
          item_id: user.id
        )
        flag.valid?
      end
    end
    context 'item_idがない場合,' do
      it 'バリデーションに引っかかる' do
        user = FactoryBot.create(:user)
        flag = Flag.new(
          user_id: nil,
          item_id: user.id
        )
        flag.valid?
      end
    end
    context 'user_idとitem_idがない場合,' do
      it 'バリデーションに引っかかる' do
        flag = Flag.new(
          user_id: nil,
          item_id: nil
        )
        flag.valid?
      end
    end
  end
end
