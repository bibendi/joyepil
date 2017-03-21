FactoryGirl.define do
  factory :appointment do
    sequence(:client_name) { |n| "Client #{n}" }
    sequence(:client_phone) { |n| "12345#{n}" }
  end
end
