FactoryGirl.define do
  factory :user do
    name     "Kevin"
    lastname    "Mendez"
    email  "kevin@mendez.com"
    permissions "2"
    password "goSerbear"
    password_confirmation "goSerbear"
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
