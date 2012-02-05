# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :generic_model do
    name "My Generic model"

    factory :post_model do
      name "Post"
      after_create do |gm|
        gm.add_attribute :title
        gm.add_attribute :intro
        gm.add_attribute :content
      end
    end
  end
end
