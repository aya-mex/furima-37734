class OrderAddress
  include ActiveModel::Model
  attr_accessor :zip_code, :prefecture_id, :city, :street, :building, :phone_number, :user_id, :item_id

  with_options presence: true do
    validates :zip_code, format: { with: /\A\d{3}[-]\d{4}\z/, message: "is invalid. Enter it as follows (e.g. 123-4567)" }
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :city, :street, :user_id, :item_id
    validates :phone_number, format: { with: ^0[0-9]{9,10}$, message: "is too short" }
  end
  
  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(zip_code: zip_code, prefecture_id: prefecture_id, city: city, street: street, building: building, phone_number: phone_number)
  end
end