# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :generic_instance_attribute do
    generic_instance ""
    key "MyString"
    value "MyString"
  end
end
