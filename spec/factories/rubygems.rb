FactoryBot.define do
  factory :rubygem do
    name { FFaker::Lorem.sentence }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    slug { FFaker::Lorem.word }
  end
end
