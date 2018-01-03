# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # ASR error model
    #
    class ServiceError

      include MsRestAzure

      # @return [String] Error code.
      attr_accessor :code

      # @return [String] Error message.
      attr_accessor :message

      # @return [String] Possible causes of error.
      attr_accessor :possible_causes

      # @return [String] Recommended action to resolve error.
      attr_accessor :recommended_action

      # @return [String] Activity Id.
      attr_accessor :activity_id


      #
      # Mapper for ServiceError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceError',
          type: {
            name: 'Composite',
            class_name: 'ServiceError',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              possible_causes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'possibleCauses',
                type: {
                  name: 'String'
                }
              },
              recommended_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendedAction',
                type: {
                  name: 'String'
                }
              },
              activity_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityId',
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