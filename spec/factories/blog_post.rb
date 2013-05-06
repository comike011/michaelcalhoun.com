FactoryGirl.define do
  factory :blog_post do
    association :admin_user, :factory => :admin_user
    title "Test Title"
    body "Lorem Ipsum Sit Emmet Dolor"
  end
end

