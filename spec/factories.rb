FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    lastname    "michael@example.com"
    permissions "34"
    password "foobar"
    password_confirmation "foobar"
  end
end
