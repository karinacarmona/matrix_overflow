FactoryGirl.define do
  factory :category do
    content { Faker::Lorem.sentence }
  end

  factory :post do
    title { Faker::Lorem.word }
    content {Faker::Lorem.sentence}
  end
end