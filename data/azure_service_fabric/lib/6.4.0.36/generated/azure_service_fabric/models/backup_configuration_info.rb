# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the backup configuration information.
    #
    class BackupConfigurationInfo

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Application"] = "ApplicationBackupConfigurationInfo"
      @@discriminatorMap["Service"] = "ServiceBackupConfigurationInfo"
      @@discriminatorMap["Partition"] = "PartitionBackupConfigurationInfo"

      def initialize
        @Kind = "BackupConfigurationInfo"
      end

      attr_accessor :Kind

      # @return [String] The name of the backup policy which is applicable to
      # this Service Fabric application or service or partition.
      attr_accessor :policy_name

      # @return [BackupPolicyScope] Specifies the scope at which the backup
      # policy is applied. Possible values include: 'Invalid', 'Partition',
      # 'Service', 'Application'
      attr_accessor :policy_inherited_from

      # @return [BackupSuspensionInfo] Describes the backup suspension details.
      attr_accessor :suspension_info


      #
      # Mapper for BackupConfigurationInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupConfigurationInfo',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'BackupConfigurationInfo',
            class_name: 'BackupConfigurationInfo',
            model_properties: {
              policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyName',
                type: {
                  name: 'String'
                }
              },
              policy_inherited_from: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyInheritedFrom',
                type: {
                  name: 'String'
                }
              },
              suspension_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SuspensionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'BackupSuspensionInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
