FactoryGirl.define do
  factory :token do
    expires_at "2016-09-15 19:14:18"
    association :user, factory: :user
  end
end
