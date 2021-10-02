require 'rails_helper'

RSpec.describe "利用者記録機能", type: :system do
  before do
    @room_user = FactoryBot.create(:room_user)
  end

  context '利用者記録の登録に成功したとき' do
    it '正しい情報を入力すれば、利用者記録の登録に成功する' do
      # サインインする
      sign_in(@room_user.user)

      # 作成されたルームへ遷移する
      click_on(@room_user.room.name)

      # 利用者記録ボタンをクリックする
      click_on('利用者記録')

     # 利用者記録の一覧ページに遷移していることを確認する
     expect(current_path).to eq(room_conditions_path(@room_user.room))

     # 記録するボタンをクリックする
     click_on('記録する')

      # 値をフォームに入力する(利用者名)
      care_user_name = '菊池'
      fill_in 'condition_care_user_name', with: care_user_name

      # 値をフォームに入力する(記録者名)
      confirmer_name = '齋藤'
      fill_in 'condition_confirmer_name', with: confirmer_name

      # 値をフォームに入力する(起床)
      select '⭕', from: "condition[get_up_id]"

      # 値をフォームに入力する(朝食)
      select '全量', from: "condition[breakfast_id]"
      
      # 値をフォームに入力する(歯磨き)
      select '⭕', from: "condition[first_dentifrice_id]"

      # 値をフォームに入力する(排泄)
      select '多量', from: "condition[first_toilet_id]"

      # 値をフォームに入力する(昼食)
      select '全量', from: "condition[lunch_id]"

      # 値をフォームに入力する(歯磨き)
      select '⭕', from: "condition[second_dentifrice_id]"

      # 値をフォームに入力する(排泄)
      select '多量', from: "condition[second_toilet_id]"

      # 値をフォームに入力する(夕食)
      select '全量', from: "condition[dinner_id]"

      # 値をフォームに入力する(歯磨き)
      select '⭕', from: "condition[third_dentifrice_id]"

      # 値をフォームに入力する(排泄)
      select '多量', from: "condition[third_toilet_id]"

      # 値をフォームに入力する(入浴)
      select '清拭', from: "condition[bath_id]"

      # 値をフォームに入力する(就寝確認)
      select '⭕', from: "condition[sleep_check_id]"

      # 値をフォームに入力する(症状)
      state = '問題なし'
      fill_in 'condition_state', with: state

      # 送信した値がDBに保存されていることを確認
      expect {
        find('input[name="commit"]').click
        sleep 0.1
      }.to change { Condition.count }.by(1)

      # 利用者記録の一覧ページに遷移していることを確認する
      expect(current_path).to eq(room_conditions_path(@room_user.room))


       # 送信した値がブラウザに表示されていることを確認する(利用者名)
       expect(page).to have_content(care_user_name)

       # 送信した値がブラウザに表示されていることを確認する(記録者名)
       expect(page).to have_content(care_user_name)

       # 送信した値がブラウザに表示されていることを確認する(起床)
       expect(page).to have_content('⭕')

       # 送信した値がブラウザに表示されていることを確認する(朝食)
       expect(page).to have_content('全量')

       # 送信した値がブラウザに表示されていることを確認する(歯磨き)
       expect(page).to have_content('⭕')

       # 送信した値がブラウザに表示されていることを確認する(排泄)
       expect(page).to have_content('多量')

       # 送信した値がブラウザに表示されていることを確認する(昼食)
       expect(page).to have_content('全量')

       # 送信した値がブラウザに表示されていることを確認する(歯磨き)
       expect(page).to have_content('⭕')

       # 送信した値がブラウザに表示されていることを確認する(排泄)
       expect(page).to have_content('多量')

       # 送信した値がブラウザに表示されていることを確認する(夕食)
       expect(page).to have_content('全量')

       # 送信した値がブラウザに表示されていることを確認する(歯磨き)
       expect(page).to have_content('⭕')

       # 送信した値がブラウザに表示されていることを確認する(排泄)
       expect(page).to have_content('多量')

       # 送信した値がブラウザに表示されていることを確認する(入浴)
       expect(page).to have_content('清拭')

       # 送信した値がブラウザに表示されていることを確認する(就寝確認)
       expect(page).to have_content('⭕')

       # 送信した値がブラウザに表示されていることを確認する(症状)
       expect(page).to have_content(state)
    end
  end

  context '利用者記録の登録に失敗したとき' do
    it '送る内容が空の為、利用者記録の登録に失敗する' do
      # サインインする
      sign_in(@room_user.user)

      # 作成されたルームへ遷移する
      click_on(@room_user.room.name)

      # 利用者記録ボタンをクリックする
    click_on('利用者記録')
    
    # 利用者記録の一覧に遷移していることを確認する
     expect(current_path).to eq(room_conditions_path(@room_user.room))

     # 記録するボタンをクリックする
     click_on('記録する')

     # 値をフォームに入力する(利用者名)
     care_user_name = ''
     fill_in 'condition_care_user_name', with: care_user_name

     # 値をフォームに入力する(記録者名)
     confirmer_name = ''
     fill_in 'condition_confirmer_name', with: confirmer_name

     
     # 値をフォームに入力する(起床)
     select '--', from: "condition[get_up_id]"

     # 値をフォームに入力する(朝食)
     select '--', from: "condition[breakfast_id]"
     
     # 値をフォームに入力する(歯磨き)
     select '--', from: "condition[first_dentifrice_id]"

     # 値をフォームに入力する(排泄)
     select '--', from: "condition[first_toilet_id]"

     # 値をフォームに入力する(昼食)
     select '--', from: "condition[lunch_id]"

     # 値をフォームに入力する(歯磨き)
     select '--', from: "condition[second_dentifrice_id]"

     # 値をフォームに入力する(排泄)
     select '--', from: "condition[second_toilet_id]"

     # 値をフォームに入力する(夕食)
     select '--', from: "condition[dinner_id]"

     # 値をフォームに入力する(歯磨き)
     select '--', from: "condition[third_dentifrice_id]"

     # 値をフォームに入力する(排泄)
     select '--', from: "condition[third_toilet_id]"

     # 値をフォームに入力する(入浴)
     select '--', from: "condition[bath_id]"

     # 値をフォームに入力する(就寝確認)
     select '--', from: "condition[sleep_check_id]"


     # 値をフォームに入力する(症状)
     state = ''
     fill_in 'condition_state', with: state

      # DBに保存されていないことを確認する
      expect {
        find('input[name="commit"]').click
      }.not_to change { Condition.count }

       #利用者記録の一覧ページに遷移していることを確認する
       expect(current_path).to eq(room_conditions_path(@room_user.room))

    end
  end
end
