require 'spec_helper'

describe GenericAttribute do
  let(:generic_attribute) { FactoryGirl.create(:generic_attribute) }

  describe "validations" do
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

  describe "naming conventions" do
    it "should underscore attribute name" do
      generic_attribute.name = "MyAttribute"
      generic_attribute.name.should == "my_attribute"

      generic_attribute.name = "my attribute"
      generic_attribute.name.should == "my_attribute"

      generic_attribute.name = "my-attribute"
      generic_attribute.name.should == "my_attribute"
    end
  end
end
