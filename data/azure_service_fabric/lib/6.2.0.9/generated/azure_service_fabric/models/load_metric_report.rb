# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents the load metric report which contains the time metric was
    # reported, its name and value.
    #
    class LoadMetricReport

      include MsRestAzure

      # @return [DateTime] Gets the UTC time when the load was reported.
      attr_accessor :last_reported_utc

      # @return [String] The name of the load metric.
      attr_accessor :name

      # @return [String] The value of the load metric.
      attr_accessor :value


      #
      # Mapper for LoadMetricReport class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoadMetricReport',
          type: {
            name: 'Composite',
            class_name: 'LoadMetricReport',
            model_properties: {
              last_reported_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastReportedUtc',
                type: {
                  name: 'DateTime'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Value',
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
