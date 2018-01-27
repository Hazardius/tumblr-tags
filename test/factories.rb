FactoryBot.define do
  factory :blog do
    name       "TumblrBlog"
    identifier "tumblr_blog_hehe"
  end
  factory :user do
    sequence :email do |n|
      "user#{n}@example.com"
    end
    password              "password"
    password_confirmation "password"
  end
end
