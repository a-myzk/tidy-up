FactoryBot.define do
  factory :admin_user do
    name { 'test_user1' }
    email  { 'test_email1@a.com' }
    password { 'password1' }
    password_confirmation { 'password1' }
    admin { true }
  end

  factory :user, class: User do
    name { 'test_user2' }
    email  { 'test_email2@a.com' }
    password { 'password2' }
    password_confirmation { 'password2' }
    admin { false }
  end
end
