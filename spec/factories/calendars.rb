FactoryBot.define do
  factory :calendar do
    plan {Faker::Lorem.sentence}
    date {Faker::Date.between(from: '2021-09-20', to: '2021-09-27')}
    association :user
    association :room
  end
end
