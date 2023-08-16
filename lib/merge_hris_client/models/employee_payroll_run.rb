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
  # # The EmployeePayrollRun Object ### Description The `EmployeePayrollRun` object is used to represent an employee's pay statement for a specific payroll run.  ### Usage Example Fetch from the `LIST EmployeePayrollRun` endpoint and filter by `ID` to show all employee payroll runs.
  class EmployeePayrollRun
    attr_accessor :id

    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    # The employee whose payroll is being run.
    attr_accessor :employee

    # The payroll being run.
    attr_accessor :payroll_run

    # The total earnings throughout a given period for an employee before any deductions are made.
    attr_accessor :gross_pay

    # The take-home pay throughout a given period for an employee after deductions are made.
    attr_accessor :net_pay

    # The day and time the payroll run started.
    attr_accessor :start_date

    # The day and time the payroll run ended.
    attr_accessor :end_date

    # The day and time the payroll run was checked.
    attr_accessor :check_date

    attr_accessor :earnings

    attr_accessor :deductions

    attr_accessor :taxes

    # Indicates whether or not this object has been deleted by third party webhooks.
    attr_accessor :remote_was_deleted

    # This is the datetime that this object was last updated by Merge
    attr_accessor :modified_at

    attr_accessor :field_mappings

    attr_accessor :remote_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'remote_id' => :'remote_id',
        :'employee' => :'employee',
        :'payroll_run' => :'payroll_run',
        :'gross_pay' => :'gross_pay',
        :'net_pay' => :'net_pay',
        :'start_date' => :'start_date',
        :'end_date' => :'end_date',
        :'check_date' => :'check_date',
        :'earnings' => :'earnings',
        :'deductions' => :'deductions',
        :'taxes' => :'taxes',
        :'remote_was_deleted' => :'remote_was_deleted',
        :'modified_at' => :'modified_at',
        :'field_mappings' => :'field_mappings',
        :'remote_data' => :'remote_data'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'remote_id' => :'String',
        :'employee' => :'String',
        :'payroll_run' => :'String',
        :'gross_pay' => :'Float',
        :'net_pay' => :'Float',
        :'start_date' => :'Time',
        :'end_date' => :'Time',
        :'check_date' => :'Time',
        :'earnings' => :'Array<Earning>',
        :'deductions' => :'Array<Deduction>',
        :'taxes' => :'Array<Tax>',
        :'remote_was_deleted' => :'Boolean',
        :'modified_at' => :'Time',
        :'field_mappings' => :'Hash<String, Object>',
        :'remote_data' => :'Array<RemoteData>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'employee',
        :'payroll_run',
        :'gross_pay',
        :'net_pay',
        :'start_date',
        :'end_date',
        :'check_date',
        :'field_mappings',
        :'remote_data'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeHRISClient::EmployeePayrollRun` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeHRISClient::EmployeePayrollRun`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'employee')
        self.employee = attributes[:'employee']
      end

      if attributes.key?(:'payroll_run')
        self.payroll_run = attributes[:'payroll_run']
      end

      if attributes.key?(:'gross_pay')
        self.gross_pay = attributes[:'gross_pay']
      end

      if attributes.key?(:'net_pay')
        self.net_pay = attributes[:'net_pay']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'check_date')
        self.check_date = attributes[:'check_date']
      end

      if attributes.key?(:'earnings')
        if (value = attributes[:'earnings']).is_a?(Array)
          self.earnings = value
        end
      end

      if attributes.key?(:'deductions')
        if (value = attributes[:'deductions']).is_a?(Array)
          self.deductions = value
        end
      end

      if attributes.key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.key?(:'remote_was_deleted')
        self.remote_was_deleted = attributes[:'remote_was_deleted']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'field_mappings')
        if (value = attributes[:'field_mappings']).is_a?(Hash)
          self.field_mappings = value
        end
      end

      if attributes.key?(:'remote_data')
        if (value = attributes[:'remote_data']).is_a?(Array)
          self.remote_data = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          remote_id == o.remote_id &&
          employee == o.employee &&
          payroll_run == o.payroll_run &&
          gross_pay == o.gross_pay &&
          net_pay == o.net_pay &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          check_date == o.check_date &&
          earnings == o.earnings &&
          deductions == o.deductions &&
          taxes == o.taxes &&
          remote_was_deleted == o.remote_was_deleted &&
          modified_at == o.modified_at &&
          field_mappings == o.field_mappings &&
          remote_data == o.remote_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, remote_id, employee, payroll_run, gross_pay, net_pay, start_date, end_date, check_date, earnings, deductions, taxes, remote_was_deleted, modified_at, field_mappings, remote_data].hash
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
