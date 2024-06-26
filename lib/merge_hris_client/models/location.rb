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
  # # The Location Object ### Description The `Location` object is used to represent an address that can be associated with an employee.  ### Usage Example Fetch from the `LIST Locations` endpoint and filter by `ID` to show all office locations.
  class Location
    attr_accessor :id

    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    # The datetime that this object was created by Merge.
    attr_accessor :created_at

    # The datetime that this object was modified by Merge.
    attr_accessor :modified_at

    # The location's name.
    attr_accessor :name

    # The location's phone number.
    attr_accessor :phone_number

    # Line 1 of the location's street address.
    attr_accessor :street_1

    # Line 2 of the location's street address.
    attr_accessor :street_2

    # The location's city.
    attr_accessor :city

    # The location's state. Represents a region if outside of the US.
    attr_accessor :state

    # The location's zip code or postal code.
    attr_accessor :zip_code

    # The location's country.  * `AF` - Afghanistan * `AX` - Åland Islands * `AL` - Albania * `DZ` - Algeria * `AS` - American Samoa * `AD` - Andorra * `AO` - Angola * `AI` - Anguilla * `AQ` - Antarctica * `AG` - Antigua and Barbuda * `AR` - Argentina * `AM` - Armenia * `AW` - Aruba * `AU` - Australia * `AT` - Austria * `AZ` - Azerbaijan * `BS` - Bahamas * `BH` - Bahrain * `BD` - Bangladesh * `BB` - Barbados * `BY` - Belarus * `BE` - Belgium * `BZ` - Belize * `BJ` - Benin * `BM` - Bermuda * `BT` - Bhutan * `BO` - Bolivia * `BQ` - Bonaire, Sint Eustatius and Saba * `BA` - Bosnia and Herzegovina * `BW` - Botswana * `BV` - Bouvet Island * `BR` - Brazil * `IO` - British Indian Ocean Territory * `BN` - Brunei * `BG` - Bulgaria * `BF` - Burkina Faso * `BI` - Burundi * `CV` - Cabo Verde * `KH` - Cambodia * `CM` - Cameroon * `CA` - Canada * `KY` - Cayman Islands * `CF` - Central African Republic * `TD` - Chad * `CL` - Chile * `CN` - China * `CX` - Christmas Island * `CC` - Cocos (Keeling) Islands * `CO` - Colombia * `KM` - Comoros * `CG` - Congo * `CD` - Congo (the Democratic Republic of the) * `CK` - Cook Islands * `CR` - Costa Rica * `CI` - Côte d'Ivoire * `HR` - Croatia * `CU` - Cuba * `CW` - Curaçao * `CY` - Cyprus * `CZ` - Czechia * `DK` - Denmark * `DJ` - Djibouti * `DM` - Dominica * `DO` - Dominican Republic * `EC` - Ecuador * `EG` - Egypt * `SV` - El Salvador * `GQ` - Equatorial Guinea * `ER` - Eritrea * `EE` - Estonia * `SZ` - Eswatini * `ET` - Ethiopia * `FK` - Falkland Islands (Malvinas) * `FO` - Faroe Islands * `FJ` - Fiji * `FI` - Finland * `FR` - France * `GF` - French Guiana * `PF` - French Polynesia * `TF` - French Southern Territories * `GA` - Gabon * `GM` - Gambia * `GE` - Georgia * `DE` - Germany * `GH` - Ghana * `GI` - Gibraltar * `GR` - Greece * `GL` - Greenland * `GD` - Grenada * `GP` - Guadeloupe * `GU` - Guam * `GT` - Guatemala * `GG` - Guernsey * `GN` - Guinea * `GW` - Guinea-Bissau * `GY` - Guyana * `HT` - Haiti * `HM` - Heard Island and McDonald Islands * `VA` - Holy See * `HN` - Honduras * `HK` - Hong Kong * `HU` - Hungary * `IS` - Iceland * `IN` - India * `ID` - Indonesia * `IR` - Iran * `IQ` - Iraq * `IE` - Ireland * `IM` - Isle of Man * `IL` - Israel * `IT` - Italy * `JM` - Jamaica * `JP` - Japan * `JE` - Jersey * `JO` - Jordan * `KZ` - Kazakhstan * `KE` - Kenya * `KI` - Kiribati * `KW` - Kuwait * `KG` - Kyrgyzstan * `LA` - Laos * `LV` - Latvia * `LB` - Lebanon * `LS` - Lesotho * `LR` - Liberia * `LY` - Libya * `LI` - Liechtenstein * `LT` - Lithuania * `LU` - Luxembourg * `MO` - Macao * `MG` - Madagascar * `MW` - Malawi * `MY` - Malaysia * `MV` - Maldives * `ML` - Mali * `MT` - Malta * `MH` - Marshall Islands * `MQ` - Martinique * `MR` - Mauritania * `MU` - Mauritius * `YT` - Mayotte * `MX` - Mexico * `FM` - Micronesia (Federated States of) * `MD` - Moldova * `MC` - Monaco * `MN` - Mongolia * `ME` - Montenegro * `MS` - Montserrat * `MA` - Morocco * `MZ` - Mozambique * `MM` - Myanmar * `NA` - Namibia * `NR` - Nauru * `NP` - Nepal * `NL` - Netherlands * `NC` - New Caledonia * `NZ` - New Zealand * `NI` - Nicaragua * `NE` - Niger * `NG` - Nigeria * `NU` - Niue * `NF` - Norfolk Island * `KP` - North Korea * `MK` - North Macedonia * `MP` - Northern Mariana Islands * `NO` - Norway * `OM` - Oman * `PK` - Pakistan * `PW` - Palau * `PS` - Palestine, State of * `PA` - Panama * `PG` - Papua New Guinea * `PY` - Paraguay * `PE` - Peru * `PH` - Philippines * `PN` - Pitcairn * `PL` - Poland * `PT` - Portugal * `PR` - Puerto Rico * `QA` - Qatar * `RE` - Réunion * `RO` - Romania * `RU` - Russia * `RW` - Rwanda * `BL` - Saint Barthélemy * `SH` - Saint Helena, Ascension and Tristan da Cunha * `KN` - Saint Kitts and Nevis * `LC` - Saint Lucia * `MF` - Saint Martin (French part) * `PM` - Saint Pierre and Miquelon * `VC` - Saint Vincent and the Grenadines * `WS` - Samoa * `SM` - San Marino * `ST` - Sao Tome and Principe * `SA` - Saudi Arabia * `SN` - Senegal * `RS` - Serbia * `SC` - Seychelles * `SL` - Sierra Leone * `SG` - Singapore * `SX` - Sint Maarten (Dutch part) * `SK` - Slovakia * `SI` - Slovenia * `SB` - Solomon Islands * `SO` - Somalia * `ZA` - South Africa * `GS` - South Georgia and the South Sandwich Islands * `KR` - South Korea * `SS` - South Sudan * `ES` - Spain * `LK` - Sri Lanka * `SD` - Sudan * `SR` - Suriname * `SJ` - Svalbard and Jan Mayen * `SE` - Sweden * `CH` - Switzerland * `SY` - Syria * `TW` - Taiwan * `TJ` - Tajikistan * `TZ` - Tanzania * `TH` - Thailand * `TL` - Timor-Leste * `TG` - Togo * `TK` - Tokelau * `TO` - Tonga * `TT` - Trinidad and Tobago * `TN` - Tunisia * `TR` - Turkey * `TM` - Turkmenistan * `TC` - Turks and Caicos Islands * `TV` - Tuvalu * `UG` - Uganda * `UA` - Ukraine * `AE` - United Arab Emirates * `GB` - United Kingdom * `UM` - United States Minor Outlying Islands * `US` - United States of America * `UY` - Uruguay * `UZ` - Uzbekistan * `VU` - Vanuatu * `VE` - Venezuela * `VN` - Vietnam * `VG` - Virgin Islands (British) * `VI` - Virgin Islands (U.S.) * `WF` - Wallis and Futuna * `EH` - Western Sahara * `YE` - Yemen * `ZM` - Zambia * `ZW` - Zimbabwe
    attr_accessor :country

    # The location's type. Can be either WORK or HOME  * `HOME` - HOME * `WORK` - WORK
    attr_accessor :location_type

    # Indicates whether or not this object has been deleted in the third party platform.
    attr_accessor :remote_was_deleted

    attr_accessor :field_mappings

    attr_accessor :remote_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'remote_id' => :'remote_id',
        :'created_at' => :'created_at',
        :'modified_at' => :'modified_at',
        :'name' => :'name',
        :'phone_number' => :'phone_number',
        :'street_1' => :'street_1',
        :'street_2' => :'street_2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip_code' => :'zip_code',
        :'country' => :'country',
        :'location_type' => :'location_type',
        :'remote_was_deleted' => :'remote_was_deleted',
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
        :'created_at' => :'Time',
        :'modified_at' => :'Time',
        :'name' => :'String',
        :'phone_number' => :'String',
        :'street_1' => :'String',
        :'street_2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip_code' => :'String',
        :'country' => :'CountryEnum',
        :'location_type' => :'LocationTypeEnum',
        :'remote_was_deleted' => :'Boolean',
        :'field_mappings' => :'Object',
        :'remote_data' => :'Array<RemoteData>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'name',
        :'phone_number',
        :'street_1',
        :'street_2',
        :'city',
        :'state',
        :'zip_code',
        :'country',
        :'location_type',
        :'field_mappings',
        :'remote_data'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeHRISClient::Location` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeHRISClient::Location`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'street_1')
        self.street_1 = attributes[:'street_1']
      end

      if attributes.key?(:'street_2')
        self.street_2 = attributes[:'street_2']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'location_type')
        self.location_type = attributes[:'location_type']
      end

      if attributes.key?(:'remote_was_deleted')
        self.remote_was_deleted = attributes[:'remote_was_deleted']
      end

      if attributes.key?(:'field_mappings')
        self.field_mappings = attributes[:'field_mappings']
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
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          name == o.name &&
          phone_number == o.phone_number &&
          street_1 == o.street_1 &&
          street_2 == o.street_2 &&
          city == o.city &&
          state == o.state &&
          zip_code == o.zip_code &&
          country == o.country &&
          location_type == o.location_type &&
          remote_was_deleted == o.remote_was_deleted &&
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
      [id, remote_id, created_at, modified_at, name, phone_number, street_1, street_2, city, state, zip_code, country, location_type, remote_was_deleted, field_mappings, remote_data].hash
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
