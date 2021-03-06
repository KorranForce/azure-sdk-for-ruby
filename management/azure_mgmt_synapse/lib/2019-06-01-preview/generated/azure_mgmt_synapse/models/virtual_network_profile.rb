# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Virtual Network Profile
    #
    class VirtualNetworkProfile

      include MsRestAzure

      # @return [String] Subnet ID used for computes in workspace
      attr_accessor :compute_subnet_id


      #
      # Mapper for VirtualNetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkProfile',
            model_properties: {
              compute_subnet_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computeSubnetId',
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
