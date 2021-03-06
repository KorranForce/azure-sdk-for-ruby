# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # The details of the InMage agent.
    #
    class InMageAgentDetails

      include MsRestAzure

      # @return [String] The agent version.
      attr_accessor :agent_version

      # @return [String] A value indicating whether installed agent needs to be
      # updated.
      attr_accessor :agent_update_status

      # @return [String] A value indicating whether reboot is required after
      # update is applied.
      attr_accessor :post_update_reboot_status

      # @return [DateTime] Agent expiry date.
      attr_accessor :agent_expiry_date


      #
      # Mapper for InMageAgentDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InMageAgentDetails',
          type: {
            name: 'Composite',
            class_name: 'InMageAgentDetails',
            model_properties: {
              agent_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              agent_update_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentUpdateStatus',
                type: {
                  name: 'String'
                }
              },
              post_update_reboot_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'postUpdateRebootStatus',
                type: {
                  name: 'String'
                }
              },
              agent_expiry_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentExpiryDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
