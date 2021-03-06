class OrderAddress
  include ActiveModel::Model
  attr_accessor :zip_code, :prefecture_id, :city, :street, :building, :phone_number, :user_id, :item_id, :token

  with_options presence: true do
    validates :token, :city, :street, :user_id, :item_id
    validates :zip_code, format: { with: /\A\d{3}-\d{4}\z/, message: 'is invalid. Enter it as follows (e.g. 123-4567)' }
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'is too short' },
                             numericality: { message: 'is invalid. Input only number' }
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(zip_code: zip_code, prefecture_id: prefecture_id, city: city, street: street, building: building,
                   phone_number: phone_number, order_id: order.id)
  end
end
