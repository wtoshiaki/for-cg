require 'rails_helper'

RSpec.describe Condition, type: :model do
  before do
    @condition = FactoryBot.build(:condition)
  end


  describe '利用者記録登録' do

    context '利用者記録登録がうまくいくとき' do
      it 'すべての項目が入力されていれば登録できる' do
        expect(@condition).to be_valid
      end
    end

    context '利用者記録登録がうまくいかないとき' do
      it 'confirmer_nameが空だと登録できないとき' do
        @condition.confirmer_name = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Confirmer name can't be blank")
      end
      it 'care_user_nameが空だと登録できないとき' do
        @condition.care_user_name = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Care user name can't be blank")
      end
      it 'get_up_idが未選択だと登録できないとき' do
        @condition.get_up_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Get up can't be blank")
      end
      it 'breakfast_idが未選択だと登録できないとき' do
        @condition.breakfast_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Breakfast can't be blank")
      end
      it 'first_dentifrice_idが未選択だと登録できないとき' do
        @condition.first_dentifrice_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("First dentifrice can't be blank")
      end
      it 'first_toilet_idが未選択だと登録できないとき' do
        @condition.first_toilet_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("First toilet can't be blank")
      end
      it 'lunch_idが未選択だと登録できないとき' do
        @condition.lunch_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Lunch can't be blank")
      end
      it 'second_dentifrice_idが未選択だと登録できないとき' do
        @condition.second_dentifrice_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Second dentifrice can't be blank")
      end
      it 'second_toilet_idが未選択だと登録できないとき' do
        @condition.second_toilet_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Second toilet can't be blank")
      end
      it 'dinner_idが未選択だと登録できないとき' do
        @condition.dinner_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Dinner can't be blank")
      end
      it 'third_dentifrice_idが未選択だと登録できないとき' do
        @condition.third_dentifrice_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Third dentifrice can't be blank")
      end
      it 'third_toilet_idが未選択だと登録できないとき' do
        @condition.third_toilet_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Third toilet can't be blank")
      end
      it 'bath_idが未選択だと登録できないとき' do
        @condition.bath_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Bath can't be blank")
      end
      it 'sleep_check_idが未選択だと登録できないとき' do
        @condition.sleep_check_id = 0
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Sleep check can't be blank")
      end
      it 'stateが空だと登録できないとき' do
        @condition.state = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("State can't be blank")
      end

      it 'userが紐付いていないと保存できない' do
        @condition.user = nil
        @condition.valid?
        expect(@condition.errors.full_messages).to include('User must exist')
      end
      
      it 'roomが紐付いていないと保存できない' do
        @condition.room = nil
        @condition.valid?
        expect(@condition.errors.full_messages).to include('Room must exist')
      end
    end
  end
end

