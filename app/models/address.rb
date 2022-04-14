class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :order
  belongs_to :prefecture

  validates :zip_code, :city, :street, :phone_number, presence: true
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
end
