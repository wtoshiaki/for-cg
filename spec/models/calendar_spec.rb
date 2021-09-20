require 'rails_helper'

RSpec.describe Calendar, type: :model do
  before do
    @calendar = FactoryBot.build(:calendar)
  end

  describe 'カレンダー保存' do
    context 'カレンダーが保存できる場合' do
      it "dateとplanの値が存在すれば保存できる" do
        expect(@calendar).to be_valid
      end
    end

    context 'カレンダー保存ができない場合' do
      it 'dateが空では保存できない' do
        @calendar.date = ''
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("Date can't be blank")
      end

      it 'planが空では保存できない' do
        @calendar.plan = ''
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include("Plan can't be blank")
      end

      it 'userが紐付いていないと保存できない' do
        @calendar.user = nil
        @calendar.valid?
        expect(@calendar.errors.full_messages).to include('User must exist')
      end
      
      it 'roomが紐付いていないと保存できない' do
        @calendar.room = nil
        @calendar.valid?
        expect(@calendar.errors.full_messages.to include('Room must exist')
      end
    end
  end
end

