FactoryBot.define do
  factory :linkset do
    home { FFaker::Lorem.word }
    wiki { FFaker::Lorem.word }
    docs { FFaker::Lorem.sentence }
    mail { FFaker::Lorem.word }
    code { FFaker::Lorem.word }
    bugs { FFaker::Lorem.sentence }
    created_at { DateTime.now }
    updated_at { DateTime.now }
    association :rubygem
  end
end
