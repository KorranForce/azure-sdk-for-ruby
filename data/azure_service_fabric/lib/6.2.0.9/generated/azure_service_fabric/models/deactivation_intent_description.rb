# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Describes the intent or reason for deactivating the node.
    #
    class DeactivationIntentDescription

      include MsRestAzure

      # @return [DeactivationIntent] Describes the intent or reason for
      # deactivating the node. The possible values are following. Possible
      # values include: 'Pause', 'Restart', 'RemoveData'
      attr_accessor :deactivation_intent


      #
      # Mapper for DeactivationIntentDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeactivationIntentDescription',
          type: {
            name: 'Composite',
            class_name: 'DeactivationIntentDescription',
            model_properties: {
              deactivation_intent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DeactivationIntent',
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
