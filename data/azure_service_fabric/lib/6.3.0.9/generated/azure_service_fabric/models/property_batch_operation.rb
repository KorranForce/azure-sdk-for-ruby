# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Represents the base type for property operations that can be put into a
    # batch and submitted.
    #
    class PropertyBatchOperation

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["CheckExists"] = "CheckExistsPropertyBatchOperation"
      @@discriminatorMap["CheckSequence"] = "CheckSequencePropertyBatchOperation"
      @@discriminatorMap["CheckValue"] = "CheckValuePropertyBatchOperation"
      @@discriminatorMap["Delete"] = "DeletePropertyBatchOperation"
      @@discriminatorMap["Get"] = "GetPropertyBatchOperation"
      @@discriminatorMap["Put"] = "PutPropertyBatchOperation"

      def initialize
        @Kind = "PropertyBatchOperation"
      end

      attr_accessor :Kind

      # @return [String] The name of the Service Fabric property.
      attr_accessor :property_name


      #
      # Mapper for PropertyBatchOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PropertyBatchOperation',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'PropertyBatchOperation',
            class_name: 'PropertyBatchOperation',
            model_properties: {
              property_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PropertyName',
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
