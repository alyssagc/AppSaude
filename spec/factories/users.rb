FactoryBot.define do
  factory :user do
    sequence :email do |e|
      "user#{e}@hotmail.com"
    end
    sequence :nickname do |n|
      "nickname#{n}"
    end
    password { "123456" }
  end

end
