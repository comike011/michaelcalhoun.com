FactoryGirl.define do
  factory :admin_user do
    first_name "John"
    last_name "Doe"
    role "admin"
    sequence(:email) {|n| "user-#{n}@qwerty.com"}
    status true
    crypted_password "asdf"
  end
end

