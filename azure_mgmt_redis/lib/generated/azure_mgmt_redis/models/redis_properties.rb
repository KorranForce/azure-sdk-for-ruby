# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Properties supplied to CreateOrUpdate redis operation.
    #
    class RedisProperties

      include MsRestAzure

      # @return [String] RedisVersion parameter has been deprecated. As such,
      # it is no longer necessary to provide this parameter and any value
      # specified is ignored.
      attr_accessor :redis_version

      # @return [Sku] What sku of redis cache to deploy.
      attr_accessor :sku

      # @return [Hash{String => String}] All Redis Settings. Few possible
      # keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta,maxmemory-policy,notify-keyspace-events,maxmemory-samples,slowlog-log-slower-than,slowlog-max-len,list-max-ziplist-entries,list-max-ziplist-value,hash-max-ziplist-entries,hash-max-ziplist-value,set-max-intset-entries,zset-max-ziplist-entries,zset-max-ziplist-value
      # etc.
      attr_accessor :redis_configuration

      # @return [Boolean] If the value is true, then the non-ssl redis server
      # port (6379) will be enabled.
      attr_accessor :enable_non_ssl_port

      # @return [Hash{String => String}] tenantSettings
      attr_accessor :tenant_settings

      # @return [Integer] The number of shards to be created on a Premium
      # Cluster Cache.
      attr_accessor :shard_count

      # @return [String] The full resource ID of a subnet in a virtual network
      # to deploy the redis cache in. Example format:
      # /subscriptions/{subid}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
      attr_accessor :subnet_id

      # @return [String] Required when deploying a redis cache inside an
      # existing Azure Virtual Network.
      attr_accessor :static_ip


      #
      # Mapper for RedisProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisProperties',
          type: {
            name: 'Composite',
            class_name: 'RedisProperties',
            model_properties: {
              redis_version: {
                required: false,
                serialized_name: 'redisVersion',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              redis_configuration: {
                required: false,
                serialized_name: 'redisConfiguration',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              enable_non_ssl_port: {
                required: false,
                serialized_name: 'enableNonSslPort',
                type: {
                  name: 'Boolean'
                }
              },
              tenant_settings: {
                required: false,
                serialized_name: 'tenantSettings',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              shard_count: {
                required: false,
                serialized_name: 'shardCount',
                type: {
                  name: 'Number'
                }
              },
              subnet_id: {
                required: false,
                serialized_name: 'subnetId',
                constraints: {
                  Pattern: '^/subscriptions/[^/]*/resourceGroups/[^/]*/providers/Microsoft.(ClassicNetwork|Network)/virtualNetworks/[^/]*/subnets/[^/]*$'
                },
                type: {
                  name: 'String'
                }
              },
              static_ip: {
                required: false,
                serialized_name: 'staticIP',
                constraints: {
                  Pattern: '^\d+\.\d+\.\d+\.\d+$'
                },
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