# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Response body for evaluating a policy set.
    #
    class EvaluatePoliciesResponse

      include MsRestAzure

      # @return [Array<PolicySetResult>] Results of evaluating a policy set.
      attr_accessor :results


      #
      # Mapper for EvaluatePoliciesResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EvaluatePoliciesResponse',
          type: {
            name: 'Composite',
            class_name: 'EvaluatePoliciesResponse',
            model_properties: {
              results: {
                required: false,
                serialized_name: 'results',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PolicySetResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PolicySetResult'
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