class Address < ApplicationRecord
  belongs_to :order

  validates :zip_code, :city, :street, :phone_number, presence: true
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
end
