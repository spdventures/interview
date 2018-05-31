module Serializable
  
  attribute_names :attributes
  
  def attribute_names *attr
    self.attributes = Array attr
    super
  end
  
  def self.included(base)
    base.extend(Serializable)
  end
  
  def as_json options = {}
    serialized = Hash.new
    self.class.attributes.each do |attribute|
    serialized[attribute] = self.public_send attribute
    end
  end
  
  def to_json *options
    as_json.to_json *options
  end
  
end
