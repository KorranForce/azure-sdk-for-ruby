# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    #
    class ServiceSpecification

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<MetricSpecification>]
      attr_accessor :metric_specifications


      #
      # Mapper for ServiceSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceSpecification',
          type: {
            name: 'Composite',
            class_name: 'ServiceSpecification',
            model_properties: {
              metric_specifications: {
                required: false,
                serialized_name: 'metricSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricSpecification'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end