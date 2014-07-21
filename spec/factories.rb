FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    lastname    "michael@example.com"
    permissions "34"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :sparePart do
    brand     "VW"
    name    "Para Choques"
    description "Pieza que va delante del coche"
    carRegion "Facia"
  end
  
end
