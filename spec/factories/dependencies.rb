FactoryBot.define do
  factory :dependency do
    requirements { FFaker::Lorem.sentence }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    scope { FFaker::Lorem.sentence }
    unresolved_name { FFaker::Lorem.word }
    association :rubygem
    association :version
  end
end
