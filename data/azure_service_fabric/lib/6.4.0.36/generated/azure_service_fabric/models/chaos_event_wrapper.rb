# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Wrapper object for Chaos event.
    #
    class ChaosEventWrapper

      include MsRestAzure

      # @return [ChaosEvent] Represents an event generated during a Chaos run.
      attr_accessor :chaos_event


      #
      # Mapper for ChaosEventWrapper class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChaosEventWrapper',
          type: {
            name: 'Composite',
            class_name: 'ChaosEventWrapper',
            model_properties: {
              chaos_event: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ChaosEvent',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'Kind',
                  uber_parent: 'ChaosEvent',
                  class_name: 'ChaosEvent'
                }
              }
            }
          }
        }
      end
    end
  end
end
