class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_fee
  belongs_to :prefecture
  belongs_to :shipping_day
  has_one_attached :image
  has_one :order

  validates :title, :description, :image, presence: true
  validates :price, presence: true,
                    numericality: { only_integer: true, message: 'is invalid. Input half-width characters' },
                    inclusion: { in: 300..9_999_999, message: 'is out of setting range' }
  validates :category_id, :condition_id, :shipping_fee_id, :prefecture_id, :shipping_day_id,
            numericality: { other_than: 1, message: "can't be blank" }
end
