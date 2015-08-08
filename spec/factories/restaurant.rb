FactoryGirl.define do
  factory :restaurant do |f|
    f.name "Pizza Hutt"
    f.rating  3
  end

  factory :invalid_restaurant, parent: :restaurant do |f|
    f.name nil
  end
end