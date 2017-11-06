FactoryBot.define do
  factory :post do
    gem_name { FFaker::Lorem.sentence }
    from_version { FFaker::PhoneNumber.phone_number  }
    to_version { FFaker::PhoneNumber.phone_number  }
  end

  after(:build) do |post|
    post.class.skip_callback(:create, :after, :tweeting)
  end
end
