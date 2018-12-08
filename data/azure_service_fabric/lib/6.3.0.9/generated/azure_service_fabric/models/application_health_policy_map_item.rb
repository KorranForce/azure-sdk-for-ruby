# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Defines an item in ApplicationHealthPolicyMap.
    #
    class ApplicationHealthPolicyMapItem

      include MsRestAzure

      # @return [String] The key of the application health policy map item.
      # This is the name of the application.
      attr_accessor :key

      # @return [ApplicationHealthPolicy] The value of the application health
      # policy map item. This is the ApplicationHealthPolicy for this
      # application.
      attr_accessor :value


      #
      # Mapper for ApplicationHealthPolicyMapItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationHealthPolicyMapItem',
          type: {
            name: 'Composite',
            class_name: 'ApplicationHealthPolicyMapItem',
            model_properties: {
              key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Key',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Value',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationHealthPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
