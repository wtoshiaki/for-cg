FactoryBot.define do
  factory :calendar do
    content {Faker::Lorem.sentence}
    association :user
    association :room
  end
end
