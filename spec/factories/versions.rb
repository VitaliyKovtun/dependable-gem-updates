FactoryBot.define do
  factory :version do
    name { FFaker::Lorem.word }
    authors { FFaker::Internet.user_name }
    description { FFaker::Lorem.sentence }
    number { rand(1..10) }
    built_at { DateTime.now }
    updated_at { DateTime.now }
    summary { FFaker::Lorem.sentence }
    platform { FFaker::Lorem.word }
    created_at { DateTime.now }
    indexed { true }
    prerelease { false }
    position { rand(1..10) }
    latest { true }
    full_name { FFaker::Lorem.word }
    licenses { FFaker::Lorem.word }
    size { rand(1..10) }
    full_name { FFaker::Lorem.word }
    requirements { FFaker::Lorem.sentence }
    required_ruby_version { FFaker::Lorem.word }
    sha256 { FFaker::Lorem.word }
    full_name { FFaker::Lorem.word }
    required_rubygems_version { FFaker::Lorem.word }
    yanked_at { DateTime.now }
    info_checksum { FFaker::Lorem.word }
    yanked_info_checksum { FFaker::Lorem.word }
    association :rubygem
  end
end
