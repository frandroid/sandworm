FactoryGirl.define do
   factory :product do
      name        "Doris #29"
      inventory   20
      length      10
      width       8
      height      4
      weight      23
      description "Best zine EVER"
      upc         "2341324UTIUYI1212"
      visible     true
      active      true
      price       2.50
      wholesale_price   1.60
      cost        1.40
   end
end

FactoryGirl.define do
   factory :user do
      sequence(:name)      { |n| "Person #{n}"}
      sequence(:email)     { |n| "person-#{n}@example.com"}
      password "foobarZZ"
      password_confirmation "foobarZZ" 
      
      factory :admin do
         admin true
      end
   end
end   
      