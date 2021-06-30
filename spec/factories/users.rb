FactoryBot.define do
  factory :user do
    name { 'test_user1' }
    email  { 'test_email1@example.com' }
    password { 'password1' }
    password_confirmation { 'password1' }
    admin { false }
  end

  factory :admin_user, class: User do
    name { 'test_user2' }
    email  { 'test_email2@example.com' }
    password { 'password2' }
    password_confirmation { 'password2' }
    admin { true }
  end
end
