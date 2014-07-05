FactoryGirl.define do
  factory :user do
<<<<<<< HEAD
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

  factory :brand do
    name "VW"
  end

  factory :car do
    id_brand 1
    car_type "Hatchback"
    year 2013
    generation "4ta 2008-2013"
    model "Golf GTI"
  end
  
end
