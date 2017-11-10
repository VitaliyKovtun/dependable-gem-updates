FactoryBot.define do
  factory :dependency do
    requirements { Faker::Lorem.sentence }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    scope { Faker::Lorem.sentence }
    unresolved_name { Faker::Lorem.word }
    association :rubygem
    association :version
  end
end
