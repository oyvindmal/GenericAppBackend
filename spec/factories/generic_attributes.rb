# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :generic_attribute do
    name "MyAttribute"
    generic_model
  end
end
