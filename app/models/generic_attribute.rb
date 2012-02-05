class GenericAttribute < ActiveRecord::Base
  belongs_to :generic_model

  validates_presence_of :name, :generic_model

  def name=(new_name)
    self[:name] = "#{new_name}".gsub(/\s/,'_').underscore
  end
end
