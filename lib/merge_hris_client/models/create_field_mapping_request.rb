=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module MergeHRISClient
  class CreateFieldMappingRequest
    # The name of the target field you want this remote field to map to.
    attr_accessor :target_field_name

    # The description of the target field you want this remote field to map to.
    attr_accessor :target_field_description

    # The field traversal path of the remote field listed when you hit the GET /remote-fields endpoint.
    attr_accessor :remote_field_traversal_path

    # The method of the remote endpoint where the remote field is coming from.
    attr_accessor :remote_method

    # The path of the remote endpoint where the remote field is coming from.
    attr_accessor :remote_url_path

    # The name of the Common Model that the remote field corresponds to in a given category.
    attr_accessor :common_model_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'target_field_name' => :'target_field_name',
        :'target_field_description' => :'target_field_description',
        :'remote_field_traversal_path' => :'remote_field_traversal_path',
        :'remote_method' => :'remote_method',
        :'remote_url_path' => :'remote_url_path',
        :'common_model_name' => :'common_model_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'target_field_name' => :'String',
        :'target_field_description' => :'String',
        :'remote_field_traversal_path' => :'Array<Object>',
        :'remote_method' => :'String',
        :'remote_url_path' => :'String',
        :'common_model_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeHRISClient::CreateFieldMappingRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeHRISClient::CreateFieldMappingRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'target_field_name')
        self.target_field_name = attributes[:'target_field_name']
      end

      if attributes.key?(:'target_field_description')
        self.target_field_description = attributes[:'target_field_description']
      end

      if attributes.key?(:'remote_field_traversal_path')
        if (value = attributes[:'remote_field_traversal_path']).is_a?(Array)
          self.remote_field_traversal_path = value
        end
      end

      if attributes.key?(:'remote_method')
        self.remote_method = attributes[:'remote_method']
      end

      if attributes.key?(:'remote_url_path')
        self.remote_url_path = attributes[:'remote_url_path']
      end

      if attributes.key?(:'common_model_name')
        self.common_model_name = attributes[:'common_model_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @target_field_name.nil?
        invalid_properties.push('invalid value for "target_field_name", target_field_name cannot be nil.')
      end

      if @target_field_name.to_s.length < 1
        invalid_properties.push('invalid value for "target_field_name", the character length must be great than or equal to 1.')
      end

      if @target_field_description.nil?
        invalid_properties.push('invalid value for "target_field_description", target_field_description cannot be nil.')
      end

      if @target_field_description.to_s.length < 1
        invalid_properties.push('invalid value for "target_field_description", the character length must be great than or equal to 1.')
      end

      if @remote_field_traversal_path.nil?
        invalid_properties.push('invalid value for "remote_field_traversal_path", remote_field_traversal_path cannot be nil.')
      end

      if @remote_method.nil?
        invalid_properties.push('invalid value for "remote_method", remote_method cannot be nil.')
      end

      if @remote_method.to_s.length < 1
        invalid_properties.push('invalid value for "remote_method", the character length must be great than or equal to 1.')
      end

      if @remote_url_path.nil?
        invalid_properties.push('invalid value for "remote_url_path", remote_url_path cannot be nil.')
      end

      if @remote_url_path.to_s.length < 1
        invalid_properties.push('invalid value for "remote_url_path", the character length must be great than or equal to 1.')
      end

      if @common_model_name.nil?
        invalid_properties.push('invalid value for "common_model_name", common_model_name cannot be nil.')
      end

      if @common_model_name.to_s.length < 1
        invalid_properties.push('invalid value for "common_model_name", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @target_field_name.nil?
      return false if @target_field_name.to_s.length < 1
      return false if @target_field_description.nil?
      return false if @target_field_description.to_s.length < 1
      return false if @remote_field_traversal_path.nil?
      return false if @remote_method.nil?
      return false if @remote_method.to_s.length < 1
      return false if @remote_url_path.nil?
      return false if @remote_url_path.to_s.length < 1
      return false if @common_model_name.nil?
      return false if @common_model_name.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] target_field_name Value to be assigned
    def target_field_name=(target_field_name)
      if target_field_name.nil?
        fail ArgumentError, 'target_field_name cannot be nil'
      end

      if target_field_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "target_field_name", the character length must be great than or equal to 1.'
      end

      @target_field_name = target_field_name
    end

    # Custom attribute writer method with validation
    # @param [Object] target_field_description Value to be assigned
    def target_field_description=(target_field_description)
      if target_field_description.nil?
        fail ArgumentError, 'target_field_description cannot be nil'
      end

      if target_field_description.to_s.length < 1
        fail ArgumentError, 'invalid value for "target_field_description", the character length must be great than or equal to 1.'
      end

      @target_field_description = target_field_description
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_method Value to be assigned
    def remote_method=(remote_method)
      if remote_method.nil?
        fail ArgumentError, 'remote_method cannot be nil'
      end

      if remote_method.to_s.length < 1
        fail ArgumentError, 'invalid value for "remote_method", the character length must be great than or equal to 1.'
      end

      @remote_method = remote_method
    end

    # Custom attribute writer method with validation
    # @param [Object] remote_url_path Value to be assigned
    def remote_url_path=(remote_url_path)
      if remote_url_path.nil?
        fail ArgumentError, 'remote_url_path cannot be nil'
      end

      if remote_url_path.to_s.length < 1
        fail ArgumentError, 'invalid value for "remote_url_path", the character length must be great than or equal to 1.'
      end

      @remote_url_path = remote_url_path
    end

    # Custom attribute writer method with validation
    # @param [Object] common_model_name Value to be assigned
    def common_model_name=(common_model_name)
      if common_model_name.nil?
        fail ArgumentError, 'common_model_name cannot be nil'
      end

      if common_model_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "common_model_name", the character length must be great than or equal to 1.'
      end

      @common_model_name = common_model_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          target_field_name == o.target_field_name &&
          target_field_description == o.target_field_description &&
          remote_field_traversal_path == o.remote_field_traversal_path &&
          remote_method == o.remote_method &&
          remote_url_path == o.remote_url_path &&
          common_model_name == o.common_model_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [target_field_name, target_field_description, remote_field_traversal_path, remote_method, remote_url_path, common_model_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MergeHRISClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
