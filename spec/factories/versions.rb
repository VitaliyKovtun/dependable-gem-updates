FactoryBot.define do
  factory :version do
    name { Faker::Lorem.word }
    authors { Faker::Internet.user_name }
    description { Faker::Lorem.sentence }
    number { rand(1..10) }
    built_at { DateTime.now }
    updated_at { DateTime.now }
    summary { Faker::Lorem.sentence }
    platform { Faker::Lorem.word }
    created_at { DateTime.now }
    indexed { true }
    prerelease { false }
    position { rand(1..10) }
    latest { true }
    full_name { Faker::Lorem.word }
    licenses { Faker::Lorem.word }
    size { rand(1..10) }
    full_name { Faker::Lorem.word }
    requirements { Faker::Lorem.sentence }
    required_ruby_version { Faker::Lorem.word }
    sha256 { Faker::Lorem.word }
    full_name { Faker::Lorem.word }
    required_rubygems_version { Faker::Lorem.word }
    yanked_at { DateTime.now }
    info_checksum { Faker::Lorem.word }
    yanked_info_checksum { Faker::Lorem.word }
    association :rubygem
  end
end
