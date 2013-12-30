# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "moknows"
    admin false

    trait :admin do
      admin true
    end

  end
end
