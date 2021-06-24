require 'rails_helper'
RSpec.describe '書籍カテゴリ診断機能', type: :system do
  let(:user) { FactoryBot.create(:user) }
  let!(:item) { FactoryBot.create(:item, user: user) }
  describe '診断結果のテスト' do
    before do
      visit new_user_session_path
      fill_in 'user[email]' , with: 'test_email1@example.com'
      fill_in 'user[password]', with: 'password1'
      click_button 'ログイン'
      visit items_path
    end
    context '各項目のラジオボタンがひとつでも未選択の場合' do
      it '診断ができない' do
        visit item_path(item.id)
        find('#radio_button1').choose
        expect(page).to have_checked_field with: 'good_one', visible: false
        find('#radio_button4').choose
        expect(page).to have_checked_field with: 'good_two', visible: false
        find('#radio_button7').choose
        expect(page).to have_checked_field with: 'good_three', visible: false
        find('#radio_button10').choose
        expect(page).to have_checked_field with: 'good_four', visible: false
        find("input[name='commit'][value='診断する']").click
        sleep(0.5)
        expect(page).not_to have_content 'まだ捨てちゃダメ！'
        expect(page).not_to have_content '今が手放すタイミング！'
        expect(page).not_to have_content 'もう少し様子を見よう！'
      end
    end
    context '各項目のラジオボタンにすべてチェックされている場合' do
      it '診断結果が表示される' do
        visit item_path(item.id)
        find('#radio_button1').choose
        expect(page).to have_checked_field with: 'good_one', visible: false
        find('#radio_button4').choose
        expect(page).to have_checked_field with: 'good_two', visible: false
        find('#radio_button7').choose
        expect(page).to have_checked_field with: 'good_three', visible: false
        find('#radio_button10').choose
        expect(page).to have_checked_field with: 'good_four', visible: false
        find('#radio_button13').choose
        expect(page).to have_checked_field with: 'good_five', visible: false
        find("input[name='commit'][value='診断する']").click
        sleep(0.5)
        expect(page).to have_content '今が手放すタイミング！'
      end
    end
  end
end
