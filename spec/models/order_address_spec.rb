require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '商品購入' do
    before do
      @order_address = FactoryBot.build(:order_address)
    end

    context '内容に問題がない場合' do
      it '全ての値が正しく入力されていれば保存できること' do
      end
      it 'buildingは空でも保存できること' do
      end
    end

    context '内容に問題がある場合' do
      it 'zip_codeが空だと保存できないこと' do
      end
      it 'zip_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      end
      it 'prefecture_idを選択していないと保存できないこと' do
      end
      it 'cityが空だと保存できないこと' do
      end
      it 'streetが空だと保存できないこと' do
      end
      it 'phone_numberが空だと保存できないこと' do
      end
      it 'phone_numberは10桁以上11桁以内の半角数値でないと保存できないこと' do
      end
      it 'userが紐づいていないと保存できないこと' do
      end
      it 'itemが紐づいていないと保存できないこと' do
      end
    end
  end
end
