FactoryBot.define do
  factory :linkset do
    home { Faker::Lorem.word }
    wiki { Faker::Lorem.word }
    docs { Faker::Lorem.sentence }
    mail { Faker::Lorem.word }
    code { Faker::Lorem.word }
    bugs { Faker::Lorem.sentence }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    association :rubygem
  end
end
