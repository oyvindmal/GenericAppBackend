# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :generic_instance do
    generic_model nil

    factory :generic_post do
      association :generic_model, factory: :post_model
    end
  end
end
