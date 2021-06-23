require 'rails_helper'
RSpec.describe 'ユーザー管理機能', type: :system do

  describe 'ユーザー登録機能' do
    context 'ユーザー新規登録した場合' do
      it '作成したユーザーが表示される' do
        visit new_user_registration_path
        fill_in 'user[name]', with: 'test_user1'
        fill_in 'user[email]', with: 'test_user1@example.com'
        fill_in 'user[password]', with: 'password1'
        fill_in 'user[password_confirmation]', with: 'password1'
        click_on 'アカウント登録'
        expect(page).to have_content 'test_user1'
        expect(page).to have_content 'test_user1@example.com'
      end
    end
  end
end