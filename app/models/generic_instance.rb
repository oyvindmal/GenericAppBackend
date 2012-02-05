class GenericInstance < ActiveRecord::Base
  belongs_to :generic_model
  has_many :attributes, class_name: 'GenericInstanceAttribute'

  def initialize(attributes=nil)
    super(attributes)
  end

  def method_missing(name, *args)
    if name['='].present?
      # Setter
      set_attribute(name.to_s.split('=')[0], args[0])
    else
      get_attribute(name)
    end
  end

  def instance_variable_set(key, value)
    set_attribute(key, value)
  end

  def instance_variable_get(key)
    get_attribute(key)
  end

private
  def set_attribute(key, value)
    if generic_model.attributes.include?(key.to_sym)
      attribute = attributes.find_or_create_by_key(key)
      attribute.value = value
      attribute.save
    else
      raise('No attribute registered with this key.')
    end
  end

  def get_attribute(key)
    if generic_model.attributes.include?(key.to_sym)
      return attributes.find_by_key(key).value
    else
      raise("No attribute registered with this key: #{key}")
    end
  end
end
