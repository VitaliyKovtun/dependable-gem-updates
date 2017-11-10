FactoryBot.define do
  factory :rubygem do
    name { Faker::Lorem.sentence }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    slug { Faker::Lorem.word }
  end
end
