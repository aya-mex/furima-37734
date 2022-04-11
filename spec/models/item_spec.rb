require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '商品が出品できる場合' do
      it '全ての項目を正しく入力すれば出品できる' do
      end
    end
    context '商品が出品できない場合' do
      it '' do
      end
 end
