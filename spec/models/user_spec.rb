require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }
  describe 'ユーザー新規作成時のバリデーションテスト' do
    context '名前、メールアドレス、パスワードが正しい場合' do
      it 'ユーザーを作成できる' do
        expect(user).to be_valid
      end
    end
    context '名前が未入力の場合' do
      it 'バリデーションに引っかかる' do
        user.name = nil
        expect(user).to be_invalid
      end
    end
    context '名前が51文字以上の場合' do
      it 'バリデーションに引っかかる' do
        user.name = "a"*51
        expect(user).to be_invalid
      end
    end
    context 'メールアドレスが未入力の場合' do
      it 'バリデーションに引っかかる' do
        user.email = ""
        expect(user).to be_invalid
      end
    end
    context 'メールアドレスが無効な形式の場合' do
      it 'バリデーションに引っかかる' do
        user.email = "foobar"
        expect(user).to be_invalid
      end
    end
    context 'メールアドレスが51文字以上の場合' do
      it 'バリデーションに引っかかる' do
        user.email = "foo"*20
        expect(user).to be_invalid
      end
    end
    context 'メールアドレスが重複した場合,' do
      it 'バリデーションに引っかかる' do
        User.create!(
          name: 'ほしのげん',
          email: 'bakanouta@example.com',
          password: 'husigisouzou',
          password_confirmation: 'husigisouzou',
        )
        user = User.new(
          name: 'ほしのげん',
          email: 'bakanouta@example.com',
          password: 'husigisouzou',
          password_confirmation: 'husigisouzou',
        )
        user.invalid?
        expect(user.errors[:email]).to include("はすでに存在します")
      end
    end
    context 'パスワードが未入力の場合' do
      it 'バリデーションに引っかかる' do
        user.password = ""
        expect(user).to be_invalid
      end
    end
    context 'パスワードが6文字以下の場合' do
      it 'バリデーションに引っかかる' do
        user.password = "hoge"
        expect(user).to be_invalid
      end
    end
    context 'パスワード51文字以上の場合' do
      it 'バリデーションに引っかかる' do
        user.password = "hoge"*13
        expect(user).to be_invalid
      end
    end
  end
end
