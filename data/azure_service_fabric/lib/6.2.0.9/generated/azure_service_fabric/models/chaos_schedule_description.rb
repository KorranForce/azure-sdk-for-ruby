# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Defines the Chaos Schedule used by Chaos and the version of the Chaos
    # Schedule. The version value wraps back to 0 after surpassing
    # 2,147,483,647.
    #
    class ChaosScheduleDescription

      include MsRestAzure

      # @return [Integer] The version number of the Schedule.
      attr_accessor :version

      # @return [ChaosSchedule] Defines the schedule used by Chaos.
      attr_accessor :schedule


      #
      # Mapper for ChaosScheduleDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChaosScheduleDescription',
          type: {
            name: 'Composite',
            class_name: 'ChaosScheduleDescription',
            model_properties: {
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Version',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Schedule',
                type: {
                  name: 'Composite',
                  class_name: 'ChaosSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
