# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2018_12_01
  module Models
    #
    # Specifies how tasks should be distributed across compute nodes.
    #
    #
    class TaskSchedulingPolicy

      include MsRestAzure

      # @return [ComputeNodeFillType] How tasks should be distributed across
      # compute nodes. Possible values include: 'Spread', 'Pack'
      attr_accessor :node_fill_type


      #
      # Mapper for TaskSchedulingPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TaskSchedulingPolicy',
          type: {
            name: 'Composite',
            class_name: 'TaskSchedulingPolicy',
            model_properties: {
              node_fill_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'nodeFillType',
                type: {
                  name: 'Enum',
                  module: 'ComputeNodeFillType'
                }
              }
            }
          }
        }
      end
    end
  end
end
