FactoryGirl.define do
  factory :user do
<<<<<<< HEAD
    name     "Michael Hartl"
    lastname    "michael@example.com"
    permissions "34"
    password "foobar"
    password_confirmation "foobar"
  end
  
=======
    name     "Kevin"
    lastname    "Mendez"
    email  "kevin@mendez.com"
    permissions "2"
    password "goSerbear"
    password_confirmation "goSerbear"
  end

>>>>>>> sign-in-page-authentication
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
