FactoryBot.define do
  factory :gem_download do
    count { rand(1..10) }
    association :rubygem
    association :version
  end
end
