FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    lastname    "michael@example.com"
    permissions "34"
    password "foobar"
    password_confirmation "foobar"
  end
  
  factory :spare_part do
    brand     "VW"
    car    "Jetta"
    generation "Cuarta"
    region "Facia"
    year "2014"
    name "Volante"
    type "Externa"
  end
end
