FactoryBot.define do
  factory :post do
    content { Faker::Lorem.sentences }
    user
  end
end
