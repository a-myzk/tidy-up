require 'rails_helper'
RSpec.describe 'ユーザー管理機能', type: :system do

  describe 'ユーザーサインアップ機能' do
    context 'ユーザーサインアップした場合' do
      it '作成したユーザーが表示される' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'test_user1'
        fill_in 'user[email]', with: 'test_email1@example.com'
        fill_in 'user[password]', with: 'password1'
        fill_in 'user[password_confirmation]', with: 'password1'
        click_on 'アカウント登録'
        expect(page).to have_content 'test_user1'
        expect(page).to have_content 'test_email1@example.com'
      end
    end
  end

  describe 'ユーザーログイン機能' do
    context '未ログイン状態の場合' do
      it 'ユーザーログインできる' do
        FactoryBot.create(:user)
        visit new_user_session_path
        fill_in 'user[email]', with: 'test_email1@example.com'
        fill_in 'user[password]', with: 'password1'
        click_button 'ログイン'
        expect(page).to have_content 'ログインしました'
      end
    end
    context 'ログイン済みの場合' do
      before do
        FactoryBot.create(:user)
        visit new_user_session_path
        fill_in 'user[email]', with: 'test_email1@example.com'
        fill_in 'user[password]', with: 'password1'
        click_button 'ログイン'
      end
      it 'プロフィール画面に飛べる' do
        click_on 'アカウント確認'
        expect(page).to have_content 'test_email1@example.com'
      end
      it 'ログアウトができる' do
        click_on 'ログアウト'
        expect(page).to have_content 'ログアウトしました'
      end
    end
  end
end