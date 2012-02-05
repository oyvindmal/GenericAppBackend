require 'spec_helper'

describe GenericModel do
  describe "validations" do
    let(:generic_model) { FactoryGirl.create(:generic_model) }

    it "should come valid from factory" do
      generic_model.should be_valid
    end

    it "should not be valid without a name" do
      generic_model.name = nil
      generic_model.should_not be_valid
    end
  end

  describe "attributes" do
    let(:generic_model) do
      FactoryGirl.create(:generic_model, { name: 'BlogPost' })
    end

    it "should hold some attributes" do
      generic_model.add_attribute :title
      generic_model.add_attribute :intro
      generic_model.add_attribute :content
      expected = [:title, :intro, :content]
      generic_model.attributes.should == expected
    end
  end
end
