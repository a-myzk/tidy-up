require 'rails_helper'
RSpec.describe 'モノ管理機能', type: :system do
  let(:user) { FactoryBot.create(:user) }
  let!(:item) { FactoryBot.create(:item, user: user) }
  before do
    visit new_user_session_path
    fill_in 'session[name]', with: 'test_user1'
    fill_in 'session[email]', with: 'test_email1@example.com'
    fill_in 'session[password]', with: 'password1'
    click_on 'ログイン'
    visit items_path
  end

  describe 'モノ新規登録機能' do
    context 'モノを新規登録した場合' do
      it '作成したモノが表示される' do
        visit new_item_path
        fill_in 'item[name]', with: 'test_name1'
        fill_in 'item[comment]', with: 'test_comment1'
        find('#item_category').set(1)
        find('#item_status').set(1)
        click_on '断捨離診断する'
        expect(page).to have_content 'test_name1'
        expect(page).to have_content 'test_comment1'
      end
    end
  end
end