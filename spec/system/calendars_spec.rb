require 'rails_helper'

RSpec.describe "カレンダー登録機能", type: :system do
  before do
    # 中間テーブルを作成して、usersテーブルとroomsテーブルのレコードを作成する
    @room_user = FactoryBot.create(:room_user)
    
  end

  context 'カレンダーの保存に成功したとき' do
    it '正しい情報を入力すれば、カレンダーの保存に成功する' do
      # サインインする
      sign_in(@room_user.user)

      # 作成されたルームへ遷移する
      click_on(@room_user.room.name)

      # カレンダーボタンをクリックする
      click_on('カレンダー')

     # トップページに遷移していることを確認する
     expect(current_path).to eq(room_calendars_path(@room_user.room))

      # 値をフォームに入力する(date)
      date = '002021-09-01'
      fill_in 'calendar_date', with: date

      # 値をフォームに入力する(plan)
      plan = 'テスト'
      fill_in 'calendar_plan', with: plan
      # 送信した値がDBに保存されていることを確認
      expect {
        find('input[name="commit"]').click
        sleep 0.1
      }.to change { Calendar.count }.by(1)

      # カレンダーの一覧ページに遷移していることを確認する
      expect(current_path).to eq(room_calendars_path(@room_user.room))

       # 送信した値がブラウザに表示されていることを確認する
       expect(page).to have_content(plan)

    end
  end

  context 'カレンダーの保存に失敗したとき' do
    it '送る内容が空の為、カレンダーの保存に失敗する' do
      # サインインする
      sign_in(@room_user.user)

      # 作成されたルームへ遷移する
      click_on(@room_user.room.name)

      # カレンダーボタンをクリックする
    click_on('カレンダー')
    
    # トップページに遷移していることを確認する
     expect(current_path).to eq(room_calendars_path(@room_user.room))

      # 値をフォームに入力する
      plan = ''
      fill_in 'calendar_plan', with: plan

      # DBに保存されていないことを確認する
      expect {
        find('input[name="commit"]').click
      }.not_to change { Calendar.count }

       # カレンダーの一覧ページに遷移していることを確認する
       expect(current_path).to eq(room_calendars_path(@room_user.room))

    end
  end
end