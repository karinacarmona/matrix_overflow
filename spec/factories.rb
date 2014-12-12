FactoryGirl.define do
  factory :category do
    name { Faker::Lorem.word }
  end

  factory :post do
    title { Faker::Lorem.word }
    content {Faker::Lorem.sentence}
  end
end