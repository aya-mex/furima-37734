FactoryBot.define do
  factory :order_address do
    zip_code { '123-4567' }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    city { '港区' }
    street { '青山' }
    building { '青山ビル' }
    phone_number { '09012345678' }
    association :item
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
