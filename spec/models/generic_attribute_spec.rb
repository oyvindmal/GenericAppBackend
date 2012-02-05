require 'spec_helper'

describe GenericAttribute do
  describe "validations" do
    let(:generic_attribute) { FactoryGirl.create(:generic_attribute) }

    it "should come valid from the factory" do
      generic_attribute.should be_valid
    end

    it "should be invalid without a name" do
      generic_attribute.name = nil
      generic_attribute.should be_invalid
    end

    it "should be invalid without a model" do
      generic_attribute.generic_model = nil
      generic_attribute.should be_invalid
    end
  end
end
