# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Name of a metric for any resource .
    #
    class ResourceMetricName

      include MsRestAzure

      # @return [String] metric name value.
      attr_accessor :value

      # @return [String] Localized metric name value.
      attr_accessor :localized_value


      #
      # Mapper for ResourceMetricName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceMetricName',
          type: {
            name: 'Composite',
            class_name: 'ResourceMetricName',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              localized_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'localizedValue',
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
