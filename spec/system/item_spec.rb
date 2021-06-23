require 'rails_helper'
RSpec.describe 'モノ管理機能', type: :system do
  let(:user) { FactoryBot.create(:user) }
  let!(:item) { FactoryBot.create(:item, user: user) }
  let!(:second_item) { FactoryBot.create(:second_item, user: user) }
  let!(:third_item) { FactoryBot.create(:third_item, user: user) }
  let!(:fourth_item) { FactoryBot.create(:fourth_item, user: user) }
  let!(:fifth_item) { FactoryBot.create(:fifth_item, user: user) }

  describe 'モノ新規登録機能' do
    before do
      visit new_user_session_path
      fill_in 'user[email]' , with: 'test_email1@example.com'
      fill_in 'user[password]', with: 'password1'
      click_button 'ログイン'
      visit items_path
    end
    context 'モノを新規登録した場合' do
      it '作成したモノが表示される' do
        visit new_item_path
        fill_in 'item[name]', with: 'test_name1'
        fill_in 'item[comment]', with: 'test_comment1'
        find('#item_category').set(1)
        find('#item_status').set(1)
        click_on '登録して診断する'
        expect(page).to have_content 'test_name1'
        expect(page).to have_content 'test_comment1'
      end
    end
  end

  describe 'モノ一覧表示機能' do
    before do
      visit new_user_session_path
      fill_in 'user[email]' , with: 'test_email1@example.com'
      fill_in 'user[password]', with: 'password1'
      click_button 'ログイン'
      visit items_path
    end
    context 'モノ一覧ページを表示した場合' do
      it '作成したモノ一覧が表示される' do
        visit items_path
        expect(page).to have_content 'test_name1'
        expect(page).to have_content '衣料品'
      end
    end
    context 'モノ一覧が更新日時の降順に並んでいる場合' do
      it '最後に更新したモノが一番上に表示される' do
        item_content = all('.item_content')
        expect(item_content[0]).to have_content 'test_name5'
      end
    end
  end

  # describe 'グラフ機能' do
  #   context 'モノ一覧ページを表示した場合場合' do
  #     it 'カテゴリー別のパイチャートが表示される' do
  #       visit items_path
  #       find('#item_category').set(1)
  #       find('#item_category').set(2)
  #       expect(page).to have_content '衣料品'
  #       expect(page).to have_content '日用品'
  #     end
  #   end
  # end

end
