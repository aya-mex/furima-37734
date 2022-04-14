class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :order
  belongs_to :prefecture

  validates :zip_code, presence: true, format: { with: /\A\d{3}[-]\d{4}\z/, message: "is invalid. Enter it as follows (e.g. 123-4567)" }
  validates :city, :street, presence: true
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :phone_number, presence: true, format: { with: ^0\d{9,10}$, message: "is too short"}
end
