FactoryGirl.define do
  factory :user do
    #name "Aleksey Grischenko"
    #email "alek.grischenko@gmail.com"
    #password "as1000000009"
    #password_confirmation "as1000000009"
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end
