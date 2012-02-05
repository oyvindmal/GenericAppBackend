class GenericAttribute < ActiveRecord::Base
  belongs_to :generic_model

  validates_presence_of :name, :generic_model
end
