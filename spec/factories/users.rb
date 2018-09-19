FactoryBot.define do
  factory :user do
    sequence(:email) {|u| "mika#{u}@test.com"}    
    password { 'my-password' }
    role { 0 }
  end
end
