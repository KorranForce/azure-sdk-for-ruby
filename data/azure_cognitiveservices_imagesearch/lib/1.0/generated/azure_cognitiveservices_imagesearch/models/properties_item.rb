# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ImageSearch::V1_0
  module Models
    #
    # Defines an item.
    #
    class PropertiesItem

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AggregateRating"] = "AggregateRating"
      @@discriminatorMap["Rating"] = "Rating"

      def initialize
        @_type = "Properties/Item"
      end

      attr_accessor :_type

      # @return [String] Text representation of an item.
      attr_accessor :text


      #
      # Mapper for PropertiesItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Properties/Item',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '_type',
            uber_parent: 'PropertiesItem',
            class_name: 'PropertiesItem',
            model_properties: {
              text: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
