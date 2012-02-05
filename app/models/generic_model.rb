class GenericModel < ActiveRecord::Base
  validates_presence_of :name
  has_many :generic_attributes

  def add_attribute(name)
    generic_attributes << GenericAttribute.create(name: name)
  end

  def attributes
    generic_attributes.pluck(:name).map(&:to_sym)
  end
end
