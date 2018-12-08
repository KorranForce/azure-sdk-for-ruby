# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Describes the parameters for resuming an unmonitored manual Service
    # Fabric application upgrade
    #
    class ResumeApplicationUpgradeDescription

      include MsRestAzure

      # @return [String] The name of the upgrade domain in which to resume the
      # upgrade.
      attr_accessor :upgrade_domain_name


      #
      # Mapper for ResumeApplicationUpgradeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResumeApplicationUpgradeDescription',
          type: {
            name: 'Composite',
            class_name: 'ResumeApplicationUpgradeDescription',
            model_properties: {
              upgrade_domain_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'UpgradeDomainName',
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
