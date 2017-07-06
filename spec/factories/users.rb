FactoryGirl.define do
  factory :user do
    username "Bob"
    email "bob@gmail.com"
    password "bobspass1234"
    admin false
  end
end
