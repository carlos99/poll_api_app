FactoryGirl.define do
  factory :token do
    token "MyString"
    expires_at "2016-09-15 19:14:18"
    user nil
  end
end
