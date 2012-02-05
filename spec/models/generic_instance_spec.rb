require 'spec_helper'

describe GenericInstance do
  let(:instance) { FactoryGirl.create(:generic_post) }

  describe "attributes" do
    it "should have some attributes accessible" do
      instance.title   = "My title"
      instance.intro   = "Hello world!"
      instance.content = "Blah blah blah"

      instance.title.should == "My title"
      instance.intro.should == "Hello world!"
      instance.content.should == "Blah blah blah"
    end
  end
end
