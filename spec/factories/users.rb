FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    admin false

    trait :admin do
      admin true
    end
  end
end
